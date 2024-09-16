#!/usr/bin/env python3

import math
import rospy
import tf
from sensor_msgs.msg import NavSatFix




def callback(data):
    global first_msg
    if first_msg:
    	global origin
    	origin = [data.latitude,data.longitude,data.altitude]
    	first_msg = False
    	
    	
    a = 6378137 #equator radius
    b = 6356752.314245 #polar radius
    r=(a+b)/2
    
    #x = round((data.latitude-origin[0]),7)*r
    #y = round((data.longitude-origin[1]),7)*r
    
    x = (data.latitude-origin[0])*r*math.pi/180
    y = (data.longitude-origin[1])*r*math.pi/180

    print([x,y])
    
    br = tf.TransformBroadcaster()
    br.sendTransform((x, y, 0),
                     (0,0,0,1),
                     rospy.Time.now(),
                     "base_link",
                     "odom")




    
def gps_to_tf():
    global first_msg 
    global origin
    first_msg = True
    rospy.init_node('gps_to_tf', anonymous=False)

    rospy.Subscriber("/gps/fix", NavSatFix, callback)

    rospy.spin()

if __name__ == '__main__':
    gps_to_tf()
