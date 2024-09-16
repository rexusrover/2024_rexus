// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NodeNeighbourInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.neighbour_id = null;
      this.internode_length = null;
      this.internode_width = null;
    }
    else {
      if (initObj.hasOwnProperty('neighbour_id')) {
        this.neighbour_id = initObj.neighbour_id
      }
      else {
        this.neighbour_id = 0;
      }
      if (initObj.hasOwnProperty('internode_length')) {
        this.internode_length = initObj.internode_length
      }
      else {
        this.internode_length = 0.0;
      }
      if (initObj.hasOwnProperty('internode_width')) {
        this.internode_width = initObj.internode_width
      }
      else {
        this.internode_width = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NodeNeighbourInfo
    // Serialize message field [neighbour_id]
    bufferOffset = _serializer.uint32(obj.neighbour_id, buffer, bufferOffset);
    // Serialize message field [internode_length]
    bufferOffset = _serializer.float64(obj.internode_length, buffer, bufferOffset);
    // Serialize message field [internode_width]
    bufferOffset = _serializer.float64(obj.internode_width, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NodeNeighbourInfo
    let len;
    let data = new NodeNeighbourInfo(null);
    // Deserialize message field [neighbour_id]
    data.neighbour_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [internode_length]
    data.internode_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [internode_width]
    data.internode_width = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/NodeNeighbourInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3aef3f6e3c3519213f12eb0d4b43fe3e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 neighbour_id
    float64 internode_length
    float64 internode_width
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NodeNeighbourInfo(null);
    if (msg.neighbour_id !== undefined) {
      resolved.neighbour_id = msg.neighbour_id;
    }
    else {
      resolved.neighbour_id = 0
    }

    if (msg.internode_length !== undefined) {
      resolved.internode_length = msg.internode_length;
    }
    else {
      resolved.internode_length = 0.0
    }

    if (msg.internode_width !== undefined) {
      resolved.internode_width = msg.internode_width;
    }
    else {
      resolved.internode_width = 0.0
    }

    return resolved;
    }
};

module.exports = NodeNeighbourInfo;
