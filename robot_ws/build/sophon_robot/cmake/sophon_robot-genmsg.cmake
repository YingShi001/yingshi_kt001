# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "sophon_robot: 3 messages, 0 services")

set(MSG_I_FLAGS "-Isophon_robot:/home/linaro/robot_ws/src/sophon_robot/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(sophon_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_custom_target(_sophon_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sophon_robot" "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" ""
)

get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_custom_target(_sophon_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sophon_robot" "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" "sophon_robot/Bbox"
)

get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_custom_target(_sophon_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "sophon_robot" "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" "sophon_robot/Bboxes:sensor_msgs/CompressedImage:std_msgs/Header:sophon_robot/Bbox"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot
)
_generate_msg_cpp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot
)
_generate_msg_cpp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot
)

### Generating Services

### Generating Module File
_generate_module_cpp(sophon_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(sophon_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(sophon_robot_generate_messages sophon_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_cpp _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_cpp _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_cpp _sophon_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sophon_robot_gencpp)
add_dependencies(sophon_robot_gencpp sophon_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sophon_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot
)
_generate_msg_eus(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot
)
_generate_msg_eus(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot
)

### Generating Services

### Generating Module File
_generate_module_eus(sophon_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(sophon_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(sophon_robot_generate_messages sophon_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_eus _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_eus _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_eus _sophon_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sophon_robot_geneus)
add_dependencies(sophon_robot_geneus sophon_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sophon_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot
)
_generate_msg_lisp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot
)
_generate_msg_lisp(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot
)

### Generating Services

### Generating Module File
_generate_module_lisp(sophon_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(sophon_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(sophon_robot_generate_messages sophon_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_lisp _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_lisp _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_lisp _sophon_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sophon_robot_genlisp)
add_dependencies(sophon_robot_genlisp sophon_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sophon_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot
)
_generate_msg_nodejs(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot
)
_generate_msg_nodejs(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(sophon_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(sophon_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(sophon_robot_generate_messages sophon_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_nodejs _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_nodejs _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_nodejs _sophon_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sophon_robot_gennodejs)
add_dependencies(sophon_robot_gennodejs sophon_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sophon_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
)
_generate_msg_py(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
)
_generate_msg_py(sophon_robot
  "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg"
  "${MSG_I_FLAGS}"
  "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/CompressedImage.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
)

### Generating Services

### Generating Module File
_generate_module_py(sophon_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(sophon_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(sophon_robot_generate_messages sophon_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bbox.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_py _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Bboxes.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_py _sophon_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/linaro/robot_ws/src/sophon_robot/msg/Frame.msg" NAME_WE)
add_dependencies(sophon_robot_generate_messages_py _sophon_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(sophon_robot_genpy)
add_dependencies(sophon_robot_genpy sophon_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS sophon_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/sophon_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(sophon_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(sophon_robot_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/sophon_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(sophon_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(sophon_robot_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/sophon_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(sophon_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(sophon_robot_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/sophon_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(sophon_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(sophon_robot_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  string(REGEX REPLACE "([][+.*()^])" "\\\\\\1" ESCAPED_PATH "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot")
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/sophon_robot
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${ESCAPED_PATH}/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(sophon_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(sophon_robot_generate_messages_py sensor_msgs_generate_messages_py)
endif()
