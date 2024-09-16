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

class Fruitlets {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fruitlets = null;
    }
    else {
      if (initObj.hasOwnProperty('fruitlets')) {
        this.fruitlets = initObj.fruitlets
      }
      else {
        this.fruitlets = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Fruitlets
    // Serialize message field [fruitlets]
    // Serialize the length for message field [fruitlets]
    bufferOffset = _serializer.uint32(obj.fruitlets.length, buffer, bufferOffset);
    obj.fruitlets.forEach((val) => {
      bufferOffset = Fruitlet.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Fruitlets
    let len;
    let data = new Fruitlets(null);
    // Deserialize message field [fruitlets]
    // Deserialize array length for message field [fruitlets]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.fruitlets = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.fruitlets[i] = Fruitlet.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 54 * object.fruitlets.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/Fruitlets';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a50bac84a40bdba57cf28160438a73e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cares_msgs/Fruitlet[] fruitlets 
    
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
    const resolved = new Fruitlets(null);
    if (msg.fruitlets !== undefined) {
      resolved.fruitlets = new Array(msg.fruitlets.length);
      for (let i = 0; i < resolved.fruitlets.length; ++i) {
        resolved.fruitlets[i] = Fruitlet.Resolve(msg.fruitlets[i]);
      }
    }
    else {
      resolved.fruitlets = []
    }

    return resolved;
    }
};

module.exports = Fruitlets;
