#!/usr/bin/env/python3

import queue
import rospy
import canopen
import time
import math
from geometry_msgs.msg import Twist

can_id = 1
data = [255,1,1,1,1]


network = canopen.Network()

network.connect(channel='vcan0', bustype='socketcan')

local_node = canopen.LocalNode(can_id,None)
network.add_node(local_node)

# # This will attempt to read an SDO from nodes 1 - 127
# network.scanner.search()
# # We may need to wait a short while here to allow all nodes to respond
# time.sleep(0.05)
# for node_id in network.scanner.nodes:
#     print("Found node %d!" % node_id)


#calculations

#dimensions in meters
wheel_dia = 0.17
rover_width = 1.0

#motor rotational speed in rad/s
motor_max_w = 260.0 * (2.0 * math.pi / 60.0)
motor_rated_w = 200.0 * (2.0 * math.pi / 60.0)
motor_min_w = 0.0 * (2.0 * math.pi / 60.0)

#rover linear speed in m/s
linear_scale = 0.85
rover_max_v = motor_max_w * wheel_dia / 2.0
rover_rated_v = linear_scale * motor_rated_w * wheel_dia / 2.0
rover_min_v = motor_min_w * wheel_dia / 2.0

#rover rotational speed in rad/s
rover_max_w = rover_max_v / (0.5 * rover_width)
rover_rated_w = 1 #rover_rated_v / (0.5 * rover_width)
rover_min_w = rover_rated_v / (0.5 * rover_width)

print("Rover rated [x,z] = ",[rover_rated_v,rover_rated_w])
print("Rover max [x,z] = ",[rover_max_v,rover_max_w])


def set_motor_velocity(data):
    # #map cmd_vel from joystick range to rover velocity range
    # #normal: [0,1] to [rover_min_v,rover_rated_v]
    x_linear = data.linear.x * (rover_rated_v - rover_min_v) / (1.0-0)
    z_rot = data.angular.z *(rover_rated_w - rover_min_v) / (1.0-0)

    #convert rover velocity to motor rotational speed in rpm
    #TODO: debug z_rot only 50 rpm max
    left_motor_w = round( ((x_linear - z_rot * rover_width / 2.0) / (math.pi * wheel_dia) * 60.0) , 2)
    right_motor_w = round( ((x_linear + z_rot * rover_width / 2.0) / (math.pi * wheel_dia) * 60.0) , 2)

    print([left_motor_w,right_motor_w])

    #send to controller TODO
    #software limit check before sending
    # network.send_message(can_id,[int(left_motor_w)])



rospy.init_node("rover_motor_control")
sub = rospy.Subscriber("/cmd_vel",Twist,set_motor_velocity,queue_size=10)
while not rospy.is_shutdown():
    
    rospy.spin()


# network.send_message(can_id,data)
network.disconnect()