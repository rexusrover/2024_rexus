// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Fruitlet = require('./Fruitlet.js');

//-----------------------------------------------------------

class ThinResult {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.succeeded = null;
      this.failed = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = 0;
      }
      if (initObj.hasOwnProperty('succeeded')) {
        this.succeeded = initObj.succeeded
      }
      else {
        this.succeeded = [];
      }
      if (initObj.hasOwnProperty('failed')) {
        this.failed = initObj.failed
      }
      else {
        this.failed = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ThinResult
    // Serialize message field [result]
    bufferOffset = _serializer.uint8(obj.result, buffer, bufferOffset);
    // Serialize message field [succeeded]
    // Serialize the length for message field [succeeded]
    bufferOffset = _serializer.uint32(obj.succeeded.length, buffer, bufferOffset);
    obj.succeeded.forEach((val) => {
      bufferOffset = Fruitlet.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [failed]
    // Serialize the length for message field [failed]
    bufferOffset = _serializer.uint32(obj.failed.length, buffer, bufferOffset);
    obj.failed.forEach((val) => {
      bufferOffset = Fruitlet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ThinResult
    let len;
    let data = new ThinResult(null);
    // Deserialize message field [result]
    data.result = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [succeeded]
    // Deserialize array length for message field [succeeded]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.succeeded = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.succeeded[i] = Fruitlet.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [failed]
    // Deserialize array length for message field [failed]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.failed = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.failed[i] = Fruitlet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 54 * object.succeeded.length;
    length += 54 * object.failed.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/ThinResult';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c9c3d8639eec8f454cb407630537d31';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    uint8 result
    cares_msgs/Fruitlet[] succeeded
    cares_msgs/Fruitlet[] failed
    
    ================================================================================
    MSG: cares_msgs/Fruitlet
    uint8 ID
    geometry_msgs/Point centroid
    geometry_msgs/Point calyx 
    float32 radius
    bool chosen_one
    
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
    const resolved = new ThinResult(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = 0
    }

    if (msg.succeeded !== undefined) {
      resolved.succeeded = new Array(msg.succeeded.length);
      for (let i = 0; i < resolved.succeeded.length; ++i) {
        resolved.succeeded[i] = Fruitlet.Resolve(msg.succeeded[i]);
      }
    }
    else {
      resolved.succeeded = []
    }

    if (msg.failed !== undefined) {
      resolved.failed = new Array(msg.failed.length);
      for (let i = 0; i < resolved.failed.length; ++i) {
        resolved.failed[i] = Fruitlet.Resolve(msg.failed[i]);
      }
    }
    else {
      resolved.failed = []
    }

    return resolved;
    }
};

module.exports = ThinResult;
