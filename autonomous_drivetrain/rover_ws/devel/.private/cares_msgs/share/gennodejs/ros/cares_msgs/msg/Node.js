// Auto-generated. Do not edit!

// (in-package cares_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let NodeNeighbourInfo = require('./NodeNeighbourInfo.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class Node {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.node_id = null;
      this.node_type = null;
      this.position = null;
      this.sequencial_neighbour_id = null;
      this.neighbours = null;
    }
    else {
      if (initObj.hasOwnProperty('node_id')) {
        this.node_id = initObj.node_id
      }
      else {
        this.node_id = 0;
      }
      if (initObj.hasOwnProperty('node_type')) {
        this.node_type = initObj.node_type
      }
      else {
        this.node_type = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('sequencial_neighbour_id')) {
        this.sequencial_neighbour_id = initObj.sequencial_neighbour_id
      }
      else {
        this.sequencial_neighbour_id = 0;
      }
      if (initObj.hasOwnProperty('neighbours')) {
        this.neighbours = initObj.neighbours
      }
      else {
        this.neighbours = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Node
    // Serialize message field [node_id]
    bufferOffset = _serializer.uint32(obj.node_id, buffer, bufferOffset);
    // Serialize message field [node_type]
    bufferOffset = _serializer.uint8(obj.node_type, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.position, buffer, bufferOffset);
    // Serialize message field [sequencial_neighbour_id]
    bufferOffset = _serializer.uint32(obj.sequencial_neighbour_id, buffer, bufferOffset);
    // Serialize message field [neighbours]
    // Serialize the length for message field [neighbours]
    bufferOffset = _serializer.uint32(obj.neighbours.length, buffer, bufferOffset);
    obj.neighbours.forEach((val) => {
      bufferOffset = NodeNeighbourInfo.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Node
    let len;
    let data = new Node(null);
    // Deserialize message field [node_id]
    data.node_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [node_type]
    data.node_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [sequencial_neighbour_id]
    data.sequencial_neighbour_id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [neighbours]
    // Deserialize array length for message field [neighbours]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.neighbours = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.neighbours[i] = NodeNeighbourInfo.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 20 * object.neighbours.length;
    return length + 37;
  }

  static datatype() {
    // Returns string type for a message object
    return 'cares_msgs/Node';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9d632a96747680a83b13f1ba6df5723';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Node(null);
    if (msg.node_id !== undefined) {
      resolved.node_id = msg.node_id;
    }
    else {
      resolved.node_id = 0
    }

    if (msg.node_type !== undefined) {
      resolved.node_type = msg.node_type;
    }
    else {
      resolved.node_type = 0
    }

    if (msg.position !== undefined) {
      resolved.position = geometry_msgs.msg.Point.Resolve(msg.position)
    }
    else {
      resolved.position = new geometry_msgs.msg.Point()
    }

    if (msg.sequencial_neighbour_id !== undefined) {
      resolved.sequencial_neighbour_id = msg.sequencial_neighbour_id;
    }
    else {
      resolved.sequencial_neighbour_id = 0
    }

    if (msg.neighbours !== undefined) {
      resolved.neighbours = new Array(msg.neighbours.length);
      for (let i = 0; i < resolved.neighbours.length; ++i) {
        resolved.neighbours[i] = NodeNeighbourInfo.Resolve(msg.neighbours[i]);
      }
    }
    else {
      resolved.neighbours = []
    }

    return resolved;
    }
};

// Constants for message
Node.Constants = {
  PRIMARY_ORIGIN_NODE: 0,
  REGULAR_NODE: 1,
  MULTI_NODE: 2,
  UNLINKED_NODE: 3,
}

module.exports = Node;
