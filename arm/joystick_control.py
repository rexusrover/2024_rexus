import serial
import threading
import pygame

# Setup serial connection
ser = serial.Serial('COM7', 115200, timeout=1)  # Adjust COM port and baud rate as needed

def read_from_port(ser):
    while True:
        if ser.in_waiting:
            serial_line = ser.readline().decode('utf-8').rstrip()
            print(serial_line)

# Initialize pygame and joystick
pygame.init()
pygame.joystick.init()

joystick = pygame.joystick.Joystick(0)
joystick.init()

# Mapping joystick buttons to commands
button_map = {
    0: 'u',  # Button X -> retract j1
    1: 'd',  # Button Circle -> extend j1
    2: 'w',  # Button Square -> retract j2
    3: 'r',  # Button triangle -> extend j2
    4: 'g',  # L1 -> retract j3
    5: 'h',  # R1 -> extend j3
    6: 'm',  #select -> move left
    7: 'n',  #start -> move right
}

# Store the state of each button
button_state = {button: False for button in button_map.keys()}
servo_state = None  # Initialize servo_state to None
motor_state = None  # Initialize motor_state to None

# Thread to read serial data
thread = threading.Thread(target=read_from_port, args=(ser,))
thread.start()

print("Control your robot using the DualShock 3 controller.")
print("J1: O and X")
print("J2: \u25B2 and \u25A1")
print("J3: R1 and L1")
print("J0: R2 and L2")
print("J4(Servo): D-R and D-L")
print("J5: Select and Start")

try:
    while True:
        pygame.event.pump()

        # Check for button presses and releases
        for button in button_map.keys():
            if joystick.get_button(button):
                if not button_state[button]:  # Button was just pressed
                    button_state[button] = True
                    print(f"Button {button} pressed: Sending command '{button_map[button]}'")
            else:
                if button_state[button]:  # Button was just released
                    button_state[button] = False
                    if button in [0, 1]:  # j1 commands
                        ser.write(b's')
                        print(f"Button {button} released: Sending command 's' (stop j1)")
                    elif button in [2, 3]:  # j2 commands
                        ser.write(b'x')
                        print(f"Button {button} released: Sending command 'x' (stop j2)")
                    elif button in [4, 5]:  # j3 commands
                        ser.write(b'j')
                        print(f"Button {button} released: Sending command 'j' (stop j3)")
                    elif button in [6, 7]:  # stepper commands
                        ser.write(b'b')
                        print(f"Button {button} released: Sending command 'j' (stop j3)")

        # Continuously send commands for pressed buttons
        for button, is_pressed in button_state.items():
            if is_pressed:
                ser.write(button_map[button].encode())

        # Handle hat switch events for servo movement
        for event in pygame.event.get():
            if event.type == pygame.JOYHATMOTION:
                if event.value == (1, 0):  # Right on the hat
                    servo_state = 'e'  # Increase servo position
                    print("Hat moved right: Sending command 'e' (increase servo)")
                elif event.value == (-1, 0):  # Left on the hat
                    servo_state = 'f'  # Decrease servo position
                    print("Hat moved left: Sending command 'f' (decrease servo)")
                elif event.value == (0, 0):  # Hat released
                    servo_state = None  # Stop servo movement
                    print("Hat released: Stopping servo movement")
            elif event.type == pygame.JOYAXISMOTION:
                # Axis 5 corresponds to L2 and Axis 4 corresponds to R2
                if event.axis == 5 and event.value > -0.5:  # L2 pressed
                    motor_state = 'p'  # Motor forward
                    print(f"Axis {event.axis} moved to {event.value}: Sending command 'm' (motor forward)")
                elif event.axis == 4 and event.value > -0.5:  # R2 pressed
                    motor_state = 'q'  # Motor reverse
                    print(f"Axis {event.axis} moved to {event.value}: Sending command 'n' (motor reverse)")
                elif event.axis in [4, 5] and event.value < -0.5:  # L2 or R2 released
                    motor_state = 'c'  # Motor brake
                    print(f"Axis {event.axis} released: Sending command 'b' (motor brake)")

        # Send servo command based on hat position
        if servo_state:
            ser.write(servo_state.encode())

        # Send motor command based on L2/R2 axis position
        if motor_state:
            ser.write(motor_state.encode())
        

        # Add a small delay to reduce CPU usage
        pygame.time.wait(10)

except KeyboardInterrupt:
    pass
finally:
    ser.close()  # Ensure the serial connection is closed properly
    thread.join()
    pygame.quit()
