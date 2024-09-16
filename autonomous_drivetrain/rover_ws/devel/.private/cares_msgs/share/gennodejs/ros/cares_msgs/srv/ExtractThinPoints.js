// Auto-generated. Do not edit!

// (in-package cares_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Fruitlets = require('../msg/Fruitlets.js');

//-----------------------------------------------------------

class ExtractThinPointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.planning_link = null;
    }
    else {
      if (initObj.hasOwnProperty('planning_link')) {
        this.planning_link = initObj.planning_link
      }
      else {
        this.planning_link = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtractThinPointsRequest
    // Serialize message field [planning_link]
    bufferOffset = _serializer.string(obj.planning_link, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractThinPointsRequest
    let len;
    let data = new ExtractThinPointsRequest(null);
    // Deserialize message field [planning_link]
    data.planning_link = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.planning_link);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/ExtractThinPointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3eddc39b43c875e3035ded64c19645af';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string planning_link 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExtractThinPointsRequest(null);
    if (msg.planning_link !== undefined) {
      resolved.planning_link = msg.planning_link;
    }
    else {
      resolved.planning_link = ''
    }

    return resolved;
    }
};

class ExtractThinPointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fruitlets = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('fruitlets')) {
        this.fruitlets = initObj.fruitlets
      }
      else {
        this.fruitlets = new Fruitlets();
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExtractThinPointsResponse
    // Serialize message field [fruitlets]
    bufferOffset = Fruitlets.serialize(obj.fruitlets, buffer, bufferOffset);
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractThinPointsResponse
    let len;
    let data = new ExtractThinPointsResponse(null);
    // Deserialize message field [fruitlets]
    data.fruitlets = Fruitlets.deserialize(buffer, bufferOffset);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Fruitlets.getMessageSize(object.fruitlets);
    return length + 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/ExtractThinPointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a2849311f352cfcce08f6ae9336471b8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cares_msgs/Fruitlets fruitlets
    bool success
    
    
    ================================================================================
    MSG: cares_msgs/Fruitlets
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
    const resolved = new ExtractThinPointsResponse(null);
    if (msg.fruitlets !== undefined) {
      resolved.fruitlets = Fruitlets.Resolve(msg.fruitlets)
    }
    else {
      resolved.fruitlets = new Fruitlets()
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: ExtractThinPointsRequest,
  Response: ExtractThinPointsResponse,
  md5sum() { return '429375f5dc6bdc8c055d8ba8b52deac1'; },
  datatype() { return 'cares_msgs/ExtractThinPoints'; }
};
