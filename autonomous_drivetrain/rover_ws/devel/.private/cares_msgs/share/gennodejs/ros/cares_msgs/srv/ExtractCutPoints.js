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

let CutPoint = require('../msg/CutPoint.js');

//-----------------------------------------------------------

class ExtractCutPointsRequest {
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
    // Serializes a message object of type ExtractCutPointsRequest
    // Serialize message field [planning_link]
    bufferOffset = _serializer.string(obj.planning_link, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractCutPointsRequest
    let len;
    let data = new ExtractCutPointsRequest(null);
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
    return 'cares_msgs/ExtractCutPointsRequest';
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
    const resolved = new ExtractCutPointsRequest(null);
    if (msg.planning_link !== undefined) {
      resolved.planning_link = msg.planning_link;
    }
    else {
      resolved.planning_link = ''
    }

    return resolved;
    }
};

class ExtractCutPointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cut_points = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('cut_points')) {
        this.cut_points = initObj.cut_points
      }
      else {
        this.cut_points = [];
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
    // Serializes a message object of type ExtractCutPointsResponse
    // Serialize message field [cut_points]
    // Serialize the length for message field [cut_points]
    bufferOffset = _serializer.uint32(obj.cut_points.length, buffer, bufferOffset);
    obj.cut_points.forEach((val) => {
      bufferOffset = CutPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExtractCutPointsResponse
    let len;
    let data = new ExtractCutPointsResponse(null);
    // Deserialize message field [cut_points]
    // Deserialize array length for message field [cut_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cut_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cut_points[i] = CutPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 48 * object.cut_points.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/ExtractCutPointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aca04ad594c383bb09f3ec06f1dee576';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cares_msgs/CutPoint[] cut_points
    bool success
    
    ================================================================================
    MSG: cares_msgs/CutPoint
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
    const resolved = new ExtractCutPointsResponse(null);
    if (msg.cut_points !== undefined) {
      resolved.cut_points = new Array(msg.cut_points.length);
      for (let i = 0; i < resolved.cut_points.length; ++i) {
        resolved.cut_points[i] = CutPoint.Resolve(msg.cut_points[i]);
      }
    }
    else {
      resolved.cut_points = []
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
  Request: ExtractCutPointsRequest,
  Response: ExtractCutPointsResponse,
  md5sum() { return '604cb71cb97a878dca81952efa8bdc5a'; },
  datatype() { return 'cares_msgs/ExtractCutPoints'; }
};
