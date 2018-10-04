# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "robotino_msgs: 12 messages, 3 services")

set(MSG_I_FLAGS "-Irobotino_msgs:/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(robotino_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg" "geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg" ""
)

get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg" NAME_WE)
add_custom_target(_robotino_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "robotino_msgs" "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg" ""
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)

### Generating Services
_generate_srv_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_srv_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)
_generate_srv_cpp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
)

### Generating Module File
_generate_module_cpp(robotino_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(robotino_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(robotino_msgs_generate_messages robotino_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_cpp _robotino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_msgs_gencpp)
add_dependencies(robotino_msgs_gencpp robotino_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_msg_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)

### Generating Services
_generate_srv_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_srv_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)
_generate_srv_lisp(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
)

### Generating Module File
_generate_module_lisp(robotino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(robotino_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(robotino_msgs_generate_messages robotino_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_lisp _robotino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_msgs_genlisp)
add_dependencies(robotino_msgs_genlisp robotino_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_msg_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)

### Generating Services
_generate_srv_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_srv_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)
_generate_srv_py(robotino_msgs
  "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
)

### Generating Module File
_generate_module_py(robotino_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(robotino_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(robotino_msgs_generate_messages robotino_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg" NAME_WE)
add_dependencies(robotino_msgs_generate_messages_py _robotino_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(robotino_msgs_genpy)
add_dependencies(robotino_msgs_genpy robotino_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS robotino_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/robotino_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(robotino_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(robotino_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/robotino_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(robotino_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(robotino_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/robotino_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(robotino_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(robotino_msgs_generate_messages_py geometry_msgs_generate_messages_py)
