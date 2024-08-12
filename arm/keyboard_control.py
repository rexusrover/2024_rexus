import serial
import threading
import keyboard

# Setup serial connection
ser = serial.Serial('COM7', 115200, timeout=1)  # Adjust COM port and baud rate as needed

def read_from_port(ser):
    while True:
        if ser.in_waiting:
            serial_line = ser.readline().decode('utf-8').rstrip()
            print(serial_line)

def extend_j1(event):
    ser.write(b'u')

def retract_j1(event):
    ser.write(b'd')

def stop_j1(event):
    ser.write(b's')

def extend_j2(event):
    ser.write(b'w')

def retract_j2(event):
    ser.write(b'r')

def stop_j2(event):
    ser.write(b'x')

def increase_servo_pos(event):
    ser.write(b'e')

def decrease_servo_pos(event):
    ser.write(b'f')

def motor_forward(event):
    ser.write(b'm')

def motor_reverse(event):
    ser.write(b'n')

def motor_brake(event):
    ser.write(b'b')

# New functions for j3 control
def extend_j3(event):
    ser.write(b'g')

def retract_j3(event):
    ser.write(b'h')

def stop_j3(event):
    ser.write(b'j')

# Functions for stepper motor control
def stepper_move_p(event):
    ser.write(b'p')  # Command to move the stepper in one direction

def stepper_move_q(event):
    ser.write(b'q')  # Command to move the stepper in the opposite direction

def stepper_stop(event):
    ser.write(b'c')  # Command to stop the stepper

# Start the serial reading thread
thread = threading.Thread(target=read_from_port, args=(ser,))
thread.start()

# Setup keyboard events for actuators, servo, and motor
keyboard.on_press_key("u", extend_j1)
keyboard.on_press_key("d", retract_j1)
keyboard.on_release_key("u", stop_j1)
keyboard.on_release_key("d", stop_j1)

keyboard.on_press_key("w", extend_j2)
keyboard.on_press_key("r", retract_j2)
keyboard.on_release_key("w", stop_j2)
keyboard.on_release_key("r", stop_j2)

keyboard.on_press_key("e", increase_servo_pos)
keyboard.on_press_key("f", decrease_servo_pos)

keyboard.on_press_key("m", motor_forward)
keyboard.on_press_key("n", motor_reverse)
keyboard.on_release_key("m", motor_brake)
keyboard.on_release_key("n", motor_brake)

# Keyboard events for j3
keyboard.on_press_key("g", extend_j3)
keyboard.on_press_key("h", retract_j3)
keyboard.on_release_key("g", stop_j3)
keyboard.on_release_key("h", stop_j3)

# Keyboard events for stepper motor control
keyboard.on_press_key("p", stepper_move_p)
keyboard.on_press_key("q", stepper_move_q)
# Use lambda functions for key release to ensure the stop command is only sent once
keyboard.on_release_key("p", lambda e: stepper_stop(e))
keyboard.on_release_key("q", lambda e: stepper_stop(e))

print("Control keys: 'u', 'd', 's' for j1, 'w', 'r', 'x' for j2, 'e', 'f' for servo, 'm', 'n', 'b' for motor, 'g', 'h', 'j' for j3, 'p' and 'q' for stepper. Press 'esc' to exit.")

try:
    keyboard.wait('esc')
except KeyboardInterrupt:
    pass
finally:
    ser.close()  # Ensure the serial connection is closed properly
    thread.join()
