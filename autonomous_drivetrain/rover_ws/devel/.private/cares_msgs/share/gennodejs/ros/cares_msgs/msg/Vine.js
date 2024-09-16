// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Cane = require('./Cane.js');

//-----------------------------------------------------------

class Vine {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cane_list = null;
    }
    else {
      if (initObj.hasOwnProperty('cane_list')) {
        this.cane_list = initObj.cane_list
      }
      else {
        this.cane_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Vine
    // Serialize message field [cane_list]
    // Serialize the length for message field [cane_list]
    bufferOffset = _serializer.uint32(obj.cane_list.length, buffer, bufferOffset);
    obj.cane_list.forEach((val) => {
      bufferOffset = Cane.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Vine
    let len;
    let data = new Vine(null);
    // Deserialize message field [cane_list]
    // Deserialize array length for message field [cane_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.cane_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.cane_list[i] = Cane.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.cane_list.forEach((val) => {
      length += Cane.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/Vine';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12a641acbf6a778d8aed58c6eaa43379';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cares_msgs/Cane[] cane_list
    ================================================================================
    MSG: cares_msgs/Cane
    uint8 cane_id
    uint8 cane_type
    
    float64 internode_length
    float64 internode_width
    uint8 node_count
    
    cares_msgs/Node[] node_list
    cares_msgs/Node origin_node
    
    ================================================================================
    MSG: cares_msgs/Node
    uint32 node_id
    
    #Node Type
    uint8  PRIMARY_ORIGIN_NODE = 0
    uint8  REGULAR_NODE = 1
    uint8  MULTI_NODE = 2
    uint8  UNLINKED_NODE = 3
    uint8  node_type
    
    geometry_msgs/Point position
    
    uint32 sequencial_neighbour_id
    cares_msgs/NodeNeighbourInfo[] neighbours
    
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: cares_msgs/NodeNeighbourInfo
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
    const resolved = new Vine(null);
    if (msg.cane_list !== undefined) {
      resolved.cane_list = new Array(msg.cane_list.length);
      for (let i = 0; i < resolved.cane_list.length; ++i) {
        resolved.cane_list[i] = Cane.Resolve(msg.cane_list[i]);
      }
    }
    else {
      resolved.cane_list = []
    }

    return resolved;
    }
};

module.exports = Vine;
