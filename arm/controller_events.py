import pygame

# Initialize pygame
pygame.init()

# Initialize the joystick
pygame.joystick.init()

# Check if the joystick is connected
if pygame.joystick.get_count() == 0:
    print("No joystick connected.")
    exit()

# Select the first joystick
joystick = pygame.joystick.Joystick(0)
joystick.init()

print(f"Joystick name: {joystick.get_name()}")
print(f"Number of buttons: {joystick.get_numbuttons()}")
print(f"Number of axes: {joystick.get_numaxes()}")

# Run a loop to keep checking for events
running = True
while running:
    for event in pygame.event.get():
        print(event)  # Print all events to the console

        if event.type == pygame.QUIT:
            running = False

        elif event.type == pygame.JOYBUTTONDOWN:
            print(f"Button {event.button} pressed")

        elif event.type == pygame.JOYBUTTONUP:
            print(f"Button {event.button} released")

        elif event.type == pygame.JOYAXISMOTION:
            axis_value = joystick.get_axis(event.axis)
            print(f"Axis {event.axis} moved to {axis_value:.3f}")

        elif event.type == pygame.JOYHATMOTION:
            print(f"Hat moved to {event.value}")

    # Exit if the 'Select' button is pressed
    if joystick.get_button(8):  # Assuming 'Select' is button 8
        running = False

# Quit pygame
pygame.quit()
