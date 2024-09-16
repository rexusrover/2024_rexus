// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Node = require('./Node.js');

//-----------------------------------------------------------

class Cane {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cane_id = null;
      this.cane_type = null;
      this.internode_length = null;
      this.internode_width = null;
      this.node_count = null;
      this.node_list = null;
      this.origin_node = null;
    }
    else {
      if (initObj.hasOwnProperty('cane_id')) {
        this.cane_id = initObj.cane_id
      }
      else {
        this.cane_id = 0;
      }
      if (initObj.hasOwnProperty('cane_type')) {
        this.cane_type = initObj.cane_type
      }
      else {
        this.cane_type = 0;
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
      if (initObj.hasOwnProperty('node_count')) {
        this.node_count = initObj.node_count
      }
      else {
        this.node_count = 0;
      }
      if (initObj.hasOwnProperty('node_list')) {
        this.node_list = initObj.node_list
      }
      else {
        this.node_list = [];
      }
      if (initObj.hasOwnProperty('origin_node')) {
        this.origin_node = initObj.origin_node
      }
      else {
        this.origin_node = new Node();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Cane
    // Serialize message field [cane_id]
    bufferOffset = _serializer.uint8(obj.cane_id, buffer, bufferOffset);
    // Serialize message field [cane_type]
    bufferOffset = _serializer.uint8(obj.cane_type, buffer, bufferOffset);
    // Serialize message field [internode_length]
    bufferOffset = _serializer.float64(obj.internode_length, buffer, bufferOffset);
    // Serialize message field [internode_width]
    bufferOffset = _serializer.float64(obj.internode_width, buffer, bufferOffset);
    // Serialize message field [node_count]
    bufferOffset = _serializer.uint8(obj.node_count, buffer, bufferOffset);
    // Serialize message field [node_list]
    // Serialize the length for message field [node_list]
    bufferOffset = _serializer.uint32(obj.node_list.length, buffer, bufferOffset);
    obj.node_list.forEach((val) => {
      bufferOffset = Node.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [origin_node]
    bufferOffset = Node.serialize(obj.origin_node, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Cane
    let len;
    let data = new Cane(null);
    // Deserialize message field [cane_id]
    data.cane_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [cane_type]
    data.cane_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [internode_length]
    data.internode_length = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [internode_width]
    data.internode_width = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [node_count]
    data.node_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [node_list]
    // Deserialize array length for message field [node_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.node_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.node_list[i] = Node.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [origin_node]
    data.origin_node = Node.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.node_list.forEach((val) => {
      length += Node.getMessageSize(val);
    });
    length += Node.getMessageSize(object.origin_node);
    return length + 23;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/Cane';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '990229165f52a870a5751518d654608f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Cane(null);
    if (msg.cane_id !== undefined) {
      resolved.cane_id = msg.cane_id;
    }
    else {
      resolved.cane_id = 0
    }

    if (msg.cane_type !== undefined) {
      resolved.cane_type = msg.cane_type;
    }
    else {
      resolved.cane_type = 0
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

    if (msg.node_count !== undefined) {
      resolved.node_count = msg.node_count;
    }
    else {
      resolved.node_count = 0
    }

    if (msg.node_list !== undefined) {
      resolved.node_list = new Array(msg.node_list.length);
      for (let i = 0; i < resolved.node_list.length; ++i) {
        resolved.node_list[i] = Node.Resolve(msg.node_list[i]);
      }
    }
    else {
      resolved.node_list = []
    }

    if (msg.origin_node !== undefined) {
      resolved.origin_node = Node.Resolve(msg.origin_node)
    }
    else {
      resolved.origin_node = new Node()
    }

    return resolved;
    }
};

module.exports = Cane;
