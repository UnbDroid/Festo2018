
"use strict";

let GrapplerReadings = require('./GrapplerReadings.js');
let GripperState = require('./GripperState.js');
let AnalogReadings = require('./AnalogReadings.js');
let EncoderReadings = require('./EncoderReadings.js');
let NorthStarReadings = require('./NorthStarReadings.js');
let DigitalReadings = require('./DigitalReadings.js');
let PowerReadings = require('./PowerReadings.js');
let SetGrapplerAxes = require('./SetGrapplerAxes.js');
let SetGrapplerAxis = require('./SetGrapplerAxis.js');
let BHAReadings = require('./BHAReadings.js');
let MotorReadings = require('./MotorReadings.js');
let SetBHAPressures = require('./SetBHAPressures.js');

module.exports = {
  GrapplerReadings: GrapplerReadings,
  GripperState: GripperState,
  AnalogReadings: AnalogReadings,
  EncoderReadings: EncoderReadings,
  NorthStarReadings: NorthStarReadings,
  DigitalReadings: DigitalReadings,
  PowerReadings: PowerReadings,
  SetGrapplerAxes: SetGrapplerAxes,
  SetGrapplerAxis: SetGrapplerAxis,
  BHAReadings: BHAReadings,
  MotorReadings: MotorReadings,
  SetBHAPressures: SetBHAPressures,
};
