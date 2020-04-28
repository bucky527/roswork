// Auto-generated. Do not edit!

// (in-package datashow.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Pose_error {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.linear_e = null;
      this.angle_e = null;
    }
    else {
      if (initObj.hasOwnProperty('linear_e')) {
        this.linear_e = initObj.linear_e
      }
      else {
        this.linear_e = 0.0;
      }
      if (initObj.hasOwnProperty('angle_e')) {
        this.angle_e = initObj.angle_e
      }
      else {
        this.angle_e = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pose_error
    // Serialize message field [linear_e]
    bufferOffset = _serializer.float64(obj.linear_e, buffer, bufferOffset);
    // Serialize message field [angle_e]
    bufferOffset = _serializer.float64(obj.angle_e, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pose_error
    let len;
    let data = new Pose_error(null);
    // Deserialize message field [linear_e]
    data.linear_e = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [angle_e]
    data.angle_e = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'datashow/Pose_error';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '11596aec3b6d70c9624c2fe748bd31cb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 linear_e
    float64 angle_e
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Pose_error(null);
    if (msg.linear_e !== undefined) {
      resolved.linear_e = msg.linear_e;
    }
    else {
      resolved.linear_e = 0.0
    }

    if (msg.angle_e !== undefined) {
      resolved.angle_e = msg.angle_e;
    }
    else {
      resolved.angle_e = 0.0
    }

    return resolved;
    }
};

module.exports = Pose_error;
