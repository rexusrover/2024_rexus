# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from cares_msgs/Cane.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import cares_msgs.msg
import geometry_msgs.msg

class Cane(genpy.Message):
  _md5sum = "990229165f52a870a5751518d654608f"
  _type = "cares_msgs/Cane"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """uint8 cane_id
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
float64 internode_width"""
  __slots__ = ['cane_id','cane_type','internode_length','internode_width','node_count','node_list','origin_node']
  _slot_types = ['uint8','uint8','float64','float64','uint8','cares_msgs/Node[]','cares_msgs/Node']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cane_id,cane_type,internode_length,internode_width,node_count,node_list,origin_node

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Cane, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cane_id is None:
        self.cane_id = 0
      if self.cane_type is None:
        self.cane_type = 0
      if self.internode_length is None:
        self.internode_length = 0.
      if self.internode_width is None:
        self.internode_width = 0.
      if self.node_count is None:
        self.node_count = 0
      if self.node_list is None:
        self.node_list = []
      if self.origin_node is None:
        self.origin_node = cares_msgs.msg.Node()
    else:
      self.cane_id = 0
      self.cane_type = 0
      self.internode_length = 0.
      self.internode_width = 0.
      self.node_count = 0
      self.node_list = []
      self.origin_node = cares_msgs.msg.Node()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_2B2dB().pack(_x.cane_id, _x.cane_type, _x.internode_length, _x.internode_width, _x.node_count))
      length = len(self.node_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.node_list:
        _x = val1
        buff.write(_get_struct_IB().pack(_x.node_id, _x.node_type))
        _v1 = val1.position
        _x = _v1
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1.sequencial_neighbour_id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.neighbours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.neighbours:
          _x = val2
          buff.write(_get_struct_I2d().pack(_x.neighbour_id, _x.internode_length, _x.internode_width))
      _x = self
      buff.write(_get_struct_IB3dI().pack(_x.origin_node.node_id, _x.origin_node.node_type, _x.origin_node.position.x, _x.origin_node.position.y, _x.origin_node.position.z, _x.origin_node.sequencial_neighbour_id))
      length = len(self.origin_node.neighbours)
      buff.write(_struct_I.pack(length))
      for val1 in self.origin_node.neighbours:
        _x = val1
        buff.write(_get_struct_I2d().pack(_x.neighbour_id, _x.internode_length, _x.internode_width))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.node_list is None:
        self.node_list = None
      if self.origin_node is None:
        self.origin_node = cares_msgs.msg.Node()
      end = 0
      _x = self
      start = end
      end += 19
      (_x.cane_id, _x.cane_type, _x.internode_length, _x.internode_width, _x.node_count,) = _get_struct_2B2dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.node_list = []
      for i in range(0, length):
        val1 = cares_msgs.msg.Node()
        _x = val1
        start = end
        end += 5
        (_x.node_id, _x.node_type,) = _get_struct_IB().unpack(str[start:end])
        _v2 = val1.position
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (val1.sequencial_neighbour_id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.neighbours = []
        for i in range(0, length):
          val2 = cares_msgs.msg.NodeNeighbourInfo()
          _x = val2
          start = end
          end += 20
          (_x.neighbour_id, _x.internode_length, _x.internode_width,) = _get_struct_I2d().unpack(str[start:end])
          val1.neighbours.append(val2)
        self.node_list.append(val1)
      _x = self
      start = end
      end += 33
      (_x.origin_node.node_id, _x.origin_node.node_type, _x.origin_node.position.x, _x.origin_node.position.y, _x.origin_node.position.z, _x.origin_node.sequencial_neighbour_id,) = _get_struct_IB3dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.origin_node.neighbours = []
      for i in range(0, length):
        val1 = cares_msgs.msg.NodeNeighbourInfo()
        _x = val1
        start = end
        end += 20
        (_x.neighbour_id, _x.internode_length, _x.internode_width,) = _get_struct_I2d().unpack(str[start:end])
        self.origin_node.neighbours.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_2B2dB().pack(_x.cane_id, _x.cane_type, _x.internode_length, _x.internode_width, _x.node_count))
      length = len(self.node_list)
      buff.write(_struct_I.pack(length))
      for val1 in self.node_list:
        _x = val1
        buff.write(_get_struct_IB().pack(_x.node_id, _x.node_type))
        _v3 = val1.position
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _x = val1.sequencial_neighbour_id
        buff.write(_get_struct_I().pack(_x))
        length = len(val1.neighbours)
        buff.write(_struct_I.pack(length))
        for val2 in val1.neighbours:
          _x = val2
          buff.write(_get_struct_I2d().pack(_x.neighbour_id, _x.internode_length, _x.internode_width))
      _x = self
      buff.write(_get_struct_IB3dI().pack(_x.origin_node.node_id, _x.origin_node.node_type, _x.origin_node.position.x, _x.origin_node.position.y, _x.origin_node.position.z, _x.origin_node.sequencial_neighbour_id))
      length = len(self.origin_node.neighbours)
      buff.write(_struct_I.pack(length))
      for val1 in self.origin_node.neighbours:
        _x = val1
        buff.write(_get_struct_I2d().pack(_x.neighbour_id, _x.internode_length, _x.internode_width))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.node_list is None:
        self.node_list = None
      if self.origin_node is None:
        self.origin_node = cares_msgs.msg.Node()
      end = 0
      _x = self
      start = end
      end += 19
      (_x.cane_id, _x.cane_type, _x.internode_length, _x.internode_width, _x.node_count,) = _get_struct_2B2dB().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.node_list = []
      for i in range(0, length):
        val1 = cares_msgs.msg.Node()
        _x = val1
        start = end
        end += 5
        (_x.node_id, _x.node_type,) = _get_struct_IB().unpack(str[start:end])
        _v4 = val1.position
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        start = end
        end += 4
        (val1.sequencial_neighbour_id,) = _get_struct_I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.neighbours = []
        for i in range(0, length):
          val2 = cares_msgs.msg.NodeNeighbourInfo()
          _x = val2
          start = end
          end += 20
          (_x.neighbour_id, _x.internode_length, _x.internode_width,) = _get_struct_I2d().unpack(str[start:end])
          val1.neighbours.append(val2)
        self.node_list.append(val1)
      _x = self
      start = end
      end += 33
      (_x.origin_node.node_id, _x.origin_node.node_type, _x.origin_node.position.x, _x.origin_node.position.y, _x.origin_node.position.z, _x.origin_node.sequencial_neighbour_id,) = _get_struct_IB3dI().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.origin_node.neighbours = []
      for i in range(0, length):
        val1 = cares_msgs.msg.NodeNeighbourInfo()
        _x = val1
        start = end
        end += 20
        (_x.neighbour_id, _x.internode_length, _x.internode_width,) = _get_struct_I2d().unpack(str[start:end])
        self.origin_node.neighbours.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2B2dB = None
def _get_struct_2B2dB():
    global _struct_2B2dB
    if _struct_2B2dB is None:
        _struct_2B2dB = struct.Struct("<2B2dB")
    return _struct_2B2dB
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
_struct_I2d = None
def _get_struct_I2d():
    global _struct_I2d
    if _struct_I2d is None:
        _struct_I2d = struct.Struct("<I2d")
    return _struct_I2d
_struct_IB = None
def _get_struct_IB():
    global _struct_IB
    if _struct_IB is None:
        _struct_IB = struct.Struct("<IB")
    return _struct_IB
_struct_IB3dI = None
def _get_struct_IB3dI():
    global _struct_IB3dI
    if _struct_IB3dI is None:
        _struct_IB3dI = struct.Struct("<IB3dI")
    return _struct_IB3dI
