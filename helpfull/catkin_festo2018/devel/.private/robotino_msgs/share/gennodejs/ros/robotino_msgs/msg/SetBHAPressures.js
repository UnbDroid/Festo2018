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

class SetBHAPressures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pressures = null;
    }
    else {
      if (initObj.hasOwnProperty('pressures')) {
        this.pressures = initObj.pressures
      }
      else {
        this.pressures = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetBHAPressures
    // Serialize message field [pressures]
    bufferOffset = _arraySerializer.float32(obj.pressures, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetBHAPressures
    let len;
    let data = new SetBHAPressures(null);
    // Deserialize message field [pressures]
    data.pressures = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pressures.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'robotino_msgs/SetBHAPressures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f07803ec936ff4605f313dd88545e5bb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pressures	# must be of size 8
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SetBHAPressures(null);
    if (msg.pressures !== undefined) {
      resolved.pressures = msg.pressures;
    }
    else {
      resolved.pressures = []
    }

    return resolved;
    }
};

module.exports = SetBHAPressures;
