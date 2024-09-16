#include <ros.h>
#include <std_msgs/Int32.h>
#include <geometry_msgs/Twist.h>
#include <sensor_msgs/Joy.h>



#include <HardwareSerial.h>
// RS485 setup with ESp32

#define RXD2 4
#define TXD2 5

//control word
byte e_stop[]          = {0x01, 0x06, 0x20, 0x0e, 0x00, 0x05, 0x00, 0x00};//emergency stop
byte clear_fault[]     = {0x01, 0x06, 0x20, 0x0e, 0x00, 0x06, 0x00, 0x00};//clear fault  
byte stop_motor[]      = {0x01, 0x06, 0x20, 0x0e, 0x00, 0x07, 0x00, 0x00};//stop
byte motor_en[]        = {0x01, 0x06, 0x20, 0x0e, 0x00, 0x08, 0x00, 0x00};//enable

//set operation mode
byte velocity_mode[]   = {0x01, 0x06, 0x20, 0x0d, 0x00, 0x03, 0x53, 0xc8};//profile velocity mode

//set motor parameters
byte set_baud[]        = {0x01, 0x06, 0x20, 0x02, 0x00, 0x02, 0x00, 0x00};//set_baud
byte lock_shaft_boot[] = {0x01, 0x06, 0x20, 0x07, 0x00, 0x01, 0x00, 0x00};//lock_shaft_boot
byte set_max_speed[]   = {0x01, 0x06, 0x20, 0x08, 0x01, 0x04, 0x00, 0x00};//set_max_speed
byte park_off[]        = {0x01, 0x06, 0x20, 0x0c, 0x00, 0x00, 0x00, 0x00};//parking_mode_disabled
byte park_on[]         = {0x01, 0x06, 0x20, 0x0c, 0x00, 0x01, 0x00, 0x00};//parking_mode_enabled

byte set_left_encoder[]   = {0x01, 0x06, 0x20, 0x30, 0x04, 0x00, 0x00, 0x00};//set encoder line 1024
byte set_right_encoder[]  = {0x01, 0x06, 0x20, 0x60, 0x04, 0x00, 0x00, 0x00};//set encoder line 1024

byte set_left_rated_curr[]  = {0x01, 0x06, 0x20, 0x33, 0x00, 0x41, 0x00, 0x00};//6.5A rated current
byte set_right_rated_curr[] = {0x01, 0x06, 0x20, 0x63, 0x00, 0x41, 0x00, 0x00};//6.5A rated current
byte set_left_max_curr[]    = {0x01, 0x06, 0x20, 0x34, 0x00, 0x96, 0x00, 0x00};//15A max current
byte set_right_max_curr[]   = {0x01, 0x06, 0x20, 0x64, 0x00, 0x96, 0x00, 0x00};//15A


//read only
byte read_status_word[]   = {0x01, 0x03, 0x20, 0xa2, 0x00, 0x02, 0x00, 0x00};//
byte read_left_error[]    = {0x01, 0x03, 0x20, 0xa5, 0x00, 0x02, 0x00, 0x00};//
byte read_right_error[]   = {0x01, 0x03, 0x20, 0xa6, 0x00, 0x02, 0x00, 0x00};//

byte read_left_motor_pos_h[]    = {0x01, 0x03, 0x20, 0xa7, 0x00, 0x02, 0x00, 0x00};//read high byte of motor position
byte read_left_motor_pos_l[]    = {0x01, 0x03, 0x20, 0xa8, 0x00, 0x02, 0x00, 0x00};//read low byte of motor position
byte read_right_motor_pos_h[]   = {0x01, 0x03, 0x20, 0xa9, 0x00, 0x02, 0x00, 0x00};//read high byte of motor position
byte read_right_motor_pos_l[]   = {0x01, 0x03, 0x20, 0xaa, 0x00, 0x02, 0x00, 0x00};//read low byte of motor position

byte read_left_motor_vel[]    = {0x01, 0x03, 0x20, 0xab, 0x00, 0x02, 0x00, 0x00};//read left motor actual velocity in 0.1rpm
byte read_right_motor_vel[]   = {0x01, 0x03, 0x20, 0xac, 0x00, 0x02, 0x00, 0x00};//read right motor actual velocity in 0.1rpm


//control
//byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0x00, 0x64, 0x00, 0x00, 0x22, 0x77};//100rpm
//byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0x00, 0xC8, 0x00, 0x00, 0xe2, 0x56};//200rpm
//byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0xFF, 0xFF, 0x00, 0x00, 0x63, 0x8c};//-1rpm
//byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0x7F, 0xFF, 0x00, 0x00, 0x4a, 0x4c};//3000rpm
//byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0x00, 0xFF, 0x00, 0x00, 0x53, 0x98};//255pm

void checksum(byte *msg, int msg_size){
  uint16_t crc = 0xFFFF;
  for (int pos = 0; pos < msg_size-2 ; pos++) {
    crc ^= (uint16_t)msg[pos];          // XOR byte into least sig. byte of crc
    for (int i = 8; i != 0; i--) {    // Loop over each bit
      if ((crc & 0x0001) != 0) {      // If the LSB is set
        crc >>= 1;                    // Shift right and XOR 0xA001
        crc ^= 0xA001;
      }
      else                            // Else LSB is not set
        crc >>= 1;                    // Just shift right
    }
  }
  msg[msg_size-1] = (0xFF00 & crc)>>8;
  msg[msg_size-2] = (0x00FF & crc);

}

void execute(byte cmd[],int cmd_size){
  Serial.println(sizeof(cmd));
  checksum(cmd,cmd_size);
  Serial2.write(cmd,cmd_size);
  delay(5);
}




//dimensions in meters
const float wheel_dia = 0.17;
const float rover_width = 1.0;

//motor rotational speed in rad/s
const float motor_max_w = 260.0 * (2.0 * PI / 60.0);
const float motor_rated_w = 200.0 * (2.0 * PI / 60.0);
const float motor_min_w = 0.0 * (2.0 * PI / 60.0);

//rover linear speed in m/s
const float linear_scale = 0.85;
const float rover_max_v = motor_max_w * wheel_dia / 2.0;
const float rover_rated_v = linear_scale * motor_rated_w * wheel_dia / 2.0;
const float rover_min_v = motor_min_w * wheel_dia / 2.0;

//rover rotational speed in rad/s
const float rover_max_w = rover_max_v / (0.5 * rover_width);
const float rover_rated_w = 1; //rover_rated_v / (0.5 * rover_width);
const float rover_min_w = rover_rated_v / (0.5 * rover_width);

//print("Rover rated [x,z] = ",[rover_rated_v,rover_rated_w])
//print("Rover max [x,z] = ",[rover_max_v,rover_max_w])


ros::NodeHandle  nh;

std_msgs::Int32 left_rpm;
std_msgs::Int32 right_rpm;

ros::Publisher pub1("left_motor_rpm", &left_rpm);
ros::Publisher pub2("right_motor_rpm", &right_rpm);


void velCb( const geometry_msgs::Twist& cmd_vel){
//    map cmd_vel from joystick range to rover velocity range
//    normal: [0,1] to [rover_min_v,rover_rated_v]
    float x_linear = cmd_vel.linear.x * (rover_rated_v - rover_min_v) / (1.0-0);
    float z_rot = cmd_vel.angular.z *(rover_rated_w - rover_min_v) / (1.0-0);

//    convert rover velocity to motor rotational speed in rpm
    left_rpm.data = ((x_linear - z_rot * rover_width / 2.0) / (PI * wheel_dia) * 60.0);
    right_rpm.data = ((x_linear + z_rot * rover_width / 2.0) / (PI * wheel_dia) * 60.0);
 
}

ros::Subscriber<geometry_msgs::Twist> joystick_sub("cmd_vel", velCb );


void resetCb( const sensor_msgs::Joy& buttons_pressed){
  if (buttons_pressed.buttons[9]){
    init_motor_driver();
    }
}
ros::Subscriber<sensor_msgs::Joy> reset_button_sub("joy", resetCb );


byte set_both_motor_speed[] = {0x01, 0x10, 0x20, 0x88, 0x00, 0x02, 0x04, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};//100rpm

void set_velocity(){
  int16_t left_rpm_write;
  int16_t right_rpm_write;
  byte left_rpm_write_h;
  byte left_rpm_write_l;
  byte right_rpm_write_h;
  byte right_rpm_write_l;


  if (left_rpm.data < 0){
    //2's complement
    left_rpm_write = (abs(left_rpm.data) ^ 0xFFFF)+1;
  }
  else left_rpm_write = left_rpm.data;

  if (right_rpm.data > 0){  //Flip to match mounting
    //2's complement
    right_rpm_write = (abs(right_rpm.data) ^ 0xFFFF)+1;
  }
  else right_rpm_write = right_rpm.data;

  left_rpm_write_h = left_rpm_write >> 8; 
  left_rpm_write_l = left_rpm_write & 0x00FF;
  right_rpm_write_h = right_rpm_write >> 8; 
  right_rpm_write_l = right_rpm_write & 0x00FF;
  
  set_both_motor_speed[7] = left_rpm_write_h;
  set_both_motor_speed[8] = left_rpm_write_l;
//  set_both_motor_speed[9] = right_rpm_write_h;
//  set_both_motor_speed[10] = right_rpm_write_l;
  
  execute(set_both_motor_speed,sizeof(set_both_motor_speed));

  }
//    send to controller TODO
//    software limit check before sending

void init_motor_driver(){
  execute(set_left_rated_curr,sizeof(set_left_rated_curr));
  execute(set_right_rated_curr,sizeof(set_right_rated_curr));
  execute(set_left_max_curr,sizeof(set_left_max_curr));
  execute(set_right_max_curr,sizeof(set_right_max_curr));
  execute(set_left_encoder,sizeof(set_left_encoder));
  execute(set_right_encoder,sizeof(set_right_encoder));

  execute(lock_shaft_boot,sizeof(lock_shaft_boot));

  execute(velocity_mode,sizeof(velocity_mode));
  execute(motor_en,sizeof(motor_en));
  }

void setup()
{
  nh.initNode();
  nh.advertise(pub1);
  nh.advertise(pub2);
  nh.subscribe(joystick_sub);
  nh.subscribe(reset_button_sub);


  left_rpm.data = 0;
  right_rpm.data = 0;

//  Serial1.begin(115200, SERIAL_8N1, RXD1, TXD1);
  Serial2.begin(115200, SERIAL_8N1, RXD2, TXD2);
  init_motor_driver();
  
  nh.loginfo("initialized");

}

void loop()
{
  pub1.publish( &left_rpm );
  pub2.publish( &right_rpm );
  set_velocity();
  nh.spinOnce();
  delay(50);
}
