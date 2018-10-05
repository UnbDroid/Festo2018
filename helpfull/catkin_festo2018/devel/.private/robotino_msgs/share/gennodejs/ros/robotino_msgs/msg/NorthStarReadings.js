// Auto-generated. Do not edit!

// (in-package robotino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class NorthStarReadings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.seq = null;
      this.roomId = null;
      this.numSpotsVisible = null;
      this.pose = null;
      this.magSpot0 = null;
      this.magSpot1 = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('roomId')) {
        this.roomId = initObj.roomId
      }
      else {
        this.roomId = 0;
      }
      if (initObj.hasOwnProperty('numSpotsVisible')) {
        this.numSpotsVisible = initObj.numSpotsVisible
      }
      else {
        this.numSpotsVisible = 0;
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('magSpot0')) {
        this.magSpot0 = initObj.magSpot0
      }
      else {
        this.magSpot0 = 0;
      }
      if (initObj.hasOwnProperty('magSpot1')) {
        this.magSpot1 = initObj.magSpot1
      }
      else {
        this.magSpot1 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NorthStarReadings
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [roomId]
    bufferOffset = _serializer.uint32(obj.roomId, buffer, bufferOffset);
    // Serialize message field [numSpotsVisible]
    bufferOffset = _serializer.uint32(obj.numSpotsVisible, buffer, bufferOffset);
    // Serialize message field [pose]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.pose, buffer, bufferOffset);
    // Serialize message field [magSpot0]
    bufferOffset = _serializer.uint32(obj.magSpot0, buffer, bufferOffset);
    // Serialize message field [magSpot1]
    bufferOffset = _serializer.uint32(obj.magSpot1, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NorthStarReadings
    let len;
    let data = new NorthStarReadings(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [roomId]
    data.roomId = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numSpotsVisible]
    data.numSpotsVisible = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [pose]
    data.pose = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [magSpot0]
    data.magSpot0 = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [magSpot1]
    data.magSpot1 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/NorthStarReadings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b8db44cc88a378f5282e8add1661d1e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint32 seq
    uint32 roomId
    uint32 numSpotsVisible
    geometry_msgs/Pose pose
    uint32 magSpot0
    uint32 magSpot1
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NorthStarReadings(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.roomId !== undefined) {
      resolved.roomId = msg.roomId;
    }
    else {
      resolved.roomId = 0
    }

    if (msg.numSpotsVisible !== undefined) {
      resolved.numSpotsVisible = msg.numSpotsVisible;
    }
    else {
      resolved.numSpotsVisible = 0
    }

    if (msg.pose !== undefined) {
      resolved.pose = geometry_msgs.msg.Pose.Resolve(msg.pose)
    }
    else {
      resolved.pose = new geometry_msgs.msg.Pose()
    }

    if (msg.magSpot0 !== undefined) {
      resolved.magSpot0 = msg.magSpot0;
    }
    else {
      resolved.magSpot0 = 0
    }

    if (msg.magSpot1 !== undefined) {
      resolved.magSpot1 = msg.magSpot1;
    }
    else {
      resolved.magSpot1 = 0
    }

    return resolved;
    }
};

module.exports = NorthStarReadings;
