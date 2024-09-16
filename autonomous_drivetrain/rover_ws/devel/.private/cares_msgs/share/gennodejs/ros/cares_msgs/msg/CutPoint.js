// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class CutPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cut_point_a = null;
      this.cut_point_b = null;
    }
    else {
      if (initObj.hasOwnProperty('cut_point_a')) {
        this.cut_point_a = initObj.cut_point_a
      }
      else {
        this.cut_point_a = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('cut_point_b')) {
        this.cut_point_b = initObj.cut_point_b
      }
      else {
        this.cut_point_b = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CutPoint
    // Serialize message field [cut_point_a]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cut_point_a, buffer, bufferOffset);
    // Serialize message field [cut_point_b]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.cut_point_b, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CutPoint
    let len;
    let data = new CutPoint(null);
    // Deserialize message field [cut_point_a]
    data.cut_point_a = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [cut_point_b]
    data.cut_point_b = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/CutPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fc7606e3618b83242d933976407b43fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Point cut_point_a
    geometry_msgs/Point cut_point_b
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CutPoint(null);
    if (msg.cut_point_a !== undefined) {
      resolved.cut_point_a = geometry_msgs.msg.Point.Resolve(msg.cut_point_a)
    }
    else {
      resolved.cut_point_a = new geometry_msgs.msg.Point()
    }

    if (msg.cut_point_b !== undefined) {
      resolved.cut_point_b = geometry_msgs.msg.Point.Resolve(msg.cut_point_b)
    }
    else {
      resolved.cut_point_b = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = CutPoint;
