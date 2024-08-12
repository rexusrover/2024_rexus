#include <Arduino.h>
#include <Servo.h>

// Linear actuators
#define j1_DIR1 50
#define j1_DIR2 48
#define j1_PWM 12
#define j1_ENC A15

#define j2_DIR1 28
#define j2_DIR2 30
#define j2_PWM 7
#define j2_ENC A14

#define j3_DIR1 32 // Corrected pin definitions for j3
#define j3_DIR2 34
#define j3_PWM 8
#define j3_ENC A13

// Servo
Servo myservo;
int pos = 1500; // Initial servo position
const int step = 10; // Servo step size
const int servoPin = 39; // Servo pin

// Motor
const int motor_IN1 = 36;
const int motor_IN2 = 38;
const int motor_PWM = 9;

// Stepper motor control pins
const int pinA = 41; // Direction pin for one direction
const int pinB = 43; // Direction pin for the opposite direction

void setup() {
  Serial.begin(115200); // Start serial communication
  
  // Initialize pins for linear actuators
  pinMode(j1_DIR1, OUTPUT);
  pinMode(j1_DIR2, OUTPUT);
  pinMode(j1_PWM, OUTPUT);
  pinMode(j2_DIR1, OUTPUT);
  pinMode(j2_DIR2, OUTPUT);
  pinMode(j2_PWM, OUTPUT);
  pinMode(j3_DIR1, OUTPUT);
  pinMode(j3_DIR2, OUTPUT);
  pinMode(j3_PWM, OUTPUT);

  // Initialize servo
  myservo.attach(servoPin);
  
  // Initialize motor control pins
  pinMode(motor_IN1, OUTPUT);
  pinMode(motor_IN2, OUTPUT);
  pinMode(motor_PWM, OUTPUT);

  // Initialize stepper motor control pins
  pinMode(pinA, OUTPUT);
  pinMode(pinB, OUTPUT);
}

void loop() {
  if (Serial.available() > 0) {
    char command = Serial.read(); // Read incoming serial command

    // Handle command
    switch (command) {
      case 'u': extendActuator(j1_DIR1, j1_DIR2, j1_PWM); break;
      case 'd': retractActuator(j1_DIR1, j1_DIR2, j1_PWM); break;
      case 's': stopActuator(j1_PWM); break;
      case 'w': extendActuator(j2_DIR1, j2_DIR2, j2_PWM); break;
      case 'r': retractActuator(j2_DIR1, j2_DIR2, j2_PWM); break;
      case 'x': stopActuator(j2_PWM); break;
      case 'e': adjustServo(true); break; // Increase servo position
      case 'f': adjustServo(false); break; // Decrease servo position
      case 'm': motorForward(motor_IN1, motor_IN2, motor_PWM); break;
      case 'n': motorReverse(motor_IN1, motor_IN2, motor_PWM); break;
      case 'b': motorBrake(motor_IN1, motor_IN2, motor_PWM); break;
      case 'g': extendActuator(j3_DIR1, j3_DIR2, j3_PWM); break;
      case 'h': retractActuator(j3_DIR1, j3_DIR2, j3_PWM); break;
      case 'j': stopActuator(j3_PWM); break;
      case 'p': moveStepper(pinA); break; // Move stepper in one direction
      case 'q': moveStepper(pinB); break; // Move stepper in opposite direction
      case 'c': stopStepper(); break; // Stop stepper movement
    }
  }
}

void extendActuator(int DIR1, int DIR2, int PWM) {
  digitalWrite(DIR1, HIGH);
  digitalWrite(DIR2, LOW);
  analogWrite(PWM, 255); // Full speed
}

void retractActuator(int DIR1, int DIR2, int PWM) {
  digitalWrite(DIR1, LOW);
  digitalWrite(DIR2, HIGH);
  analogWrite(PWM, 255); // Full speed
}

void stopActuator(int PWM) {
  analogWrite(PWM, 0); // Stop
}

void adjustServo(bool increase) {
  pos = increase ? min(2500, pos + step) : max(500, pos - step);
  myservo.writeMicroseconds(pos);
}

void motorForward(int IN1, int IN2, int PWM) {
  digitalWrite(IN1, HIGH);
  digitalWrite(IN2, LOW);
  analogWrite(PWM, 255); // Full speed
}

void motorReverse(int IN1, int IN2, int PWM) {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, HIGH);
  analogWrite(PWM, 255); // Full speed
}

void motorBrake(int IN1, int IN2, int PWM) {
  digitalWrite(IN1, LOW);
  digitalWrite(IN2, LOW);
  analogWrite(PWM, 0); // Brake
}

void moveStepper(int pin) {
  digitalWrite(pin, HIGH); // Enable pin to move stepper
  delay(1); // Short delay to slow down the stepper speed
  digitalWrite(pin, LOW); // Disable pin
}

void stopStepper() {
  digitalWrite(pinA, LOW);
  digitalWrite(pinB, LOW);
}
