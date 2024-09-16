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


//-----------------------------------------------------------

class SetThinPointsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fruitlet_ids = null;
      this.overwrite = null;
    }
    else {
      if (initObj.hasOwnProperty('fruitlet_ids')) {
        this.fruitlet_ids = initObj.fruitlet_ids
      }
      else {
        this.fruitlet_ids = [];
      }
      if (initObj.hasOwnProperty('overwrite')) {
        this.overwrite = initObj.overwrite
      }
      else {
        this.overwrite = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetThinPointsRequest
    // Serialize message field [fruitlet_ids]
    bufferOffset = _arraySerializer.uint8(obj.fruitlet_ids, buffer, bufferOffset, null);
    // Serialize message field [overwrite]
    bufferOffset = _serializer.bool(obj.overwrite, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetThinPointsRequest
    let len;
    let data = new SetThinPointsRequest(null);
    // Deserialize message field [fruitlet_ids]
    data.fruitlet_ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [overwrite]
    data.overwrite = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.fruitlet_ids.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/SetThinPointsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a5bbb21233813c217b7fff5207655641';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] fruitlet_ids
    bool overwrite
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetThinPointsRequest(null);
    if (msg.fruitlet_ids !== undefined) {
      resolved.fruitlet_ids = msg.fruitlet_ids;
    }
    else {
      resolved.fruitlet_ids = []
    }

    if (msg.overwrite !== undefined) {
      resolved.overwrite = msg.overwrite;
    }
    else {
      resolved.overwrite = false
    }

    return resolved;
    }
};

class SetThinPointsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetThinPointsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetThinPointsResponse
    let len;
    let data = new SetThinPointsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cares_msgs/SetThinPointsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetThinPointsResponse(null);
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
  Request: SetThinPointsRequest,
  Response: SetThinPointsResponse,
  md5sum() { return '573d05f4ca7b95d5cf43deacddad077a'; },
  datatype() { return 'cares_msgs/SetThinPoints'; }
};
