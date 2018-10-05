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

class BHAReadings {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.stamp = null;
      this.pressures = null;
      this.cablepull = null;
    }
    else {
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('pressures')) {
        this.pressures = initObj.pressures
      }
      else {
        this.pressures = [];
      }
      if (initObj.hasOwnProperty('cablepull')) {
        this.cablepull = initObj.cablepull
      }
      else {
        this.cablepull = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BHAReadings
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Serialize message field [pressures]
    bufferOffset = _arraySerializer.float32(obj.pressures, buffer, bufferOffset, null);
    // Serialize message field [cablepull]
    bufferOffset = _arraySerializer.float32(obj.cablepull, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BHAReadings
    let len;
    let data = new BHAReadings(null);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [pressures]
    data.pressures = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [cablepull]
    data.cablepull = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pressures.length;
    length += 4 * object.cablepull.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/BHAReadings';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'db28e0e5f4b0a0da881baf9c7f3c94a1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time stamp
    float32[] pressures	# in bar
    float32[] cablepull
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BHAReadings(null);
    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.pressures !== undefined) {
      resolved.pressures = msg.pressures;
    }
    else {
      resolved.pressures = []
    }

    if (msg.cablepull !== undefined) {
      resolved.cablepull = msg.cablepull;
    }
    else {
      resolved.cablepull = []
    }

    return resolved;
    }
};

module.exports = BHAReadings;
