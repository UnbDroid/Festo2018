# Install script for directory: /home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/simon/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs/msg" TYPE FILE FILES
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/AnalogReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/EncoderReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/MotorReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetBHAPressures.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/BHAReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GrapplerReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/NorthStarReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxes.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/DigitalReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/GripperState.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/PowerReadings.msg"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/msg/SetGrapplerAxis.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs/srv" TYPE FILE FILES
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/ResetOdometry.srv"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetEncoderPosition.srv"
    "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/srv/SetGripperState.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs/cmake" TYPE FILE FILES "/home/simon/catkin_ws/build/robotino-ros-pkg/robotino_msgs/catkin_generated/installspace/robotino_msgs-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/simon/catkin_ws/devel/include/robotino_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/simon/catkin_ws/devel/share/common-lisp/ros/robotino_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/simon/catkin_ws/devel/lib/python2.7/dist-packages/robotino_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/simon/catkin_ws/devel/lib/python2.7/dist-packages/robotino_msgs")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/simon/catkin_ws/build/robotino-ros-pkg/robotino_msgs/catkin_generated/installspace/robotino_msgs.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs/cmake" TYPE FILE FILES "/home/simon/catkin_ws/build/robotino-ros-pkg/robotino_msgs/catkin_generated/installspace/robotino_msgs-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs/cmake" TYPE FILE FILES
    "/home/simon/catkin_ws/build/robotino-ros-pkg/robotino_msgs/catkin_generated/installspace/robotino_msgsConfig.cmake"
    "/home/simon/catkin_ws/build/robotino-ros-pkg/robotino_msgs/catkin_generated/installspace/robotino_msgsConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/robotino_msgs" TYPE FILE FILES "/home/simon/catkin_ws/src/robotino-ros-pkg/robotino_msgs/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

