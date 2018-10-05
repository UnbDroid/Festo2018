// Auto-generated. Do not edit!

// (in-package robotino_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class GrapplerReadings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.seq = null;
      this.numServos = null;
      this.torqueEnabled = null;
      this.angles = null;
      this.velocities = null;
      this.errors = null;
      this.channels = null;
      this.ids = null;
      this.cwAxesLimits = null;
      this.ccwAxesLimits = null;
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
      if (initObj.hasOwnProperty('numServos')) {
        this.numServos = initObj.numServos
      }
      else {
        this.numServos = 0;
      }
      if (initObj.hasOwnProperty('torqueEnabled')) {
        this.torqueEnabled = initObj.torqueEnabled
      }
      else {
        this.torqueEnabled = false;
      }
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('velocities')) {
        this.velocities = initObj.velocities
      }
      else {
        this.velocities = [];
      }
      if (initObj.hasOwnProperty('errors')) {
        this.errors = initObj.errors
      }
      else {
        this.errors = [];
      }
      if (initObj.hasOwnProperty('channels')) {
        this.channels = initObj.channels
      }
      else {
        this.channels = [];
      }
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('cwAxesLimits')) {
        this.cwAxesLimits = initObj.cwAxesLimits
      }
      else {
        this.cwAxesLimits = [];
      }
      if (initObj.hasOwnProperty('ccwAxesLimits')) {
        this.ccwAxesLimits = initObj.ccwAxesLimits
      }
      else {
        this.ccwAxesLimits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GrapplerReadings
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.uint32(obj.seq, buffer, bufferOffset);
    // Serialize message field [numServos]
    bufferOffset = _serializer.uint32(obj.numServos, buffer, bufferOffset);
    // Serialize message field [torqueEnabled]
    bufferOffset = _serializer.bool(obj.torqueEnabled, buffer, bufferOffset);
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float32(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [velocities]
    bufferOffset = _arraySerializer.float32(obj.velocities, buffer, bufferOffset, null);
    // Serialize message field [errors]
    bufferOffset = _arraySerializer.uint32(obj.errors, buffer, bufferOffset, null);
    // Serialize message field [channels]
    bufferOffset = _arraySerializer.uint32(obj.channels, buffer, bufferOffset, null);
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint32(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [cwAxesLimits]
    bufferOffset = _arraySerializer.float32(obj.cwAxesLimits, buffer, bufferOffset, null);
    // Serialize message field [ccwAxesLimits]
    bufferOffset = _arraySerializer.float32(obj.ccwAxesLimits, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GrapplerReadings
    let len;
    let data = new GrapplerReadings(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [numServos]
    data.numServos = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [torqueEnabled]
    data.torqueEnabled = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocities]
    data.velocities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [errors]
    data.errors = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [channels]
    data.channels = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [cwAxesLimits]
    data.cwAxesLimits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [ccwAxesLimits]
    data.ccwAxesLimits = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.angles.length;
    length += 4 * object.velocities.length;
    length += 4 * object.errors.length;
    length += 4 * object.channels.length;
    length += 4 * object.ids.length;
    length += 4 * object.cwAxesLimits.length;
    length += 4 * object.ccwAxesLimits.length;
    return length + 45;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/GrapplerReadings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '53d1f6c81df9b5242320201fe0231738';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    uint32 seq
    uint32 numServos
    bool torqueEnabled
    float32[] angles		# in degrees
    float32[] velocities	# in rpm
    uint32[] errors
    uint32[] channels
    uint32[] ids
    float32[] cwAxesLimits 	# in degrees
    float32[] ccwAxesLimits	# in degrees
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GrapplerReadings(null);
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

    if (msg.numServos !== undefined) {
      resolved.numServos = msg.numServos;
    }
    else {
      resolved.numServos = 0
    }

    if (msg.torqueEnabled !== undefined) {
      resolved.torqueEnabled = msg.torqueEnabled;
    }
    else {
      resolved.torqueEnabled = false
    }

    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.velocities !== undefined) {
      resolved.velocities = msg.velocities;
    }
    else {
      resolved.velocities = []
    }

    if (msg.errors !== undefined) {
      resolved.errors = msg.errors;
    }
    else {
      resolved.errors = []
    }

    if (msg.channels !== undefined) {
      resolved.channels = msg.channels;
    }
    else {
      resolved.channels = []
    }

    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.cwAxesLimits !== undefined) {
      resolved.cwAxesLimits = msg.cwAxesLimits;
    }
    else {
      resolved.cwAxesLimits = []
    }

    if (msg.ccwAxesLimits !== undefined) {
      resolved.ccwAxesLimits = msg.ccwAxesLimits;
    }
    else {
      resolved.ccwAxesLimits = []
    }

    return resolved;
    }
};

module.exports = GrapplerReadings;
