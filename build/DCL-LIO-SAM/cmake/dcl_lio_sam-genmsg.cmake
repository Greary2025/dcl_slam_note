# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "dcl_lio_sam: 1 messages, 1 services")

set(MSG_I_FLAGS "-Idcl_lio_sam:/home/john/dclslam_ws/src/DCL-LIO-SAM/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(dcl_lio_sam_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_custom_target(_dcl_lio_sam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dcl_lio_sam" "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" "sensor_msgs/PointField:sensor_msgs/PointCloud2:std_msgs/Header"
)

get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_custom_target(_dcl_lio_sam_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "dcl_lio_sam" "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dcl_lio_sam
)

### Generating Services
_generate_srv_cpp(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dcl_lio_sam
)

### Generating Module File
_generate_module_cpp(dcl_lio_sam
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dcl_lio_sam
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(dcl_lio_sam_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(dcl_lio_sam_generate_messages dcl_lio_sam_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_cpp _dcl_lio_sam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_cpp _dcl_lio_sam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dcl_lio_sam_gencpp)
add_dependencies(dcl_lio_sam_gencpp dcl_lio_sam_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dcl_lio_sam_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dcl_lio_sam
)

### Generating Services
_generate_srv_eus(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dcl_lio_sam
)

### Generating Module File
_generate_module_eus(dcl_lio_sam
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dcl_lio_sam
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(dcl_lio_sam_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(dcl_lio_sam_generate_messages dcl_lio_sam_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_eus _dcl_lio_sam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_eus _dcl_lio_sam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dcl_lio_sam_geneus)
add_dependencies(dcl_lio_sam_geneus dcl_lio_sam_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dcl_lio_sam_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dcl_lio_sam
)

### Generating Services
_generate_srv_lisp(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dcl_lio_sam
)

### Generating Module File
_generate_module_lisp(dcl_lio_sam
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dcl_lio_sam
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(dcl_lio_sam_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(dcl_lio_sam_generate_messages dcl_lio_sam_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_lisp _dcl_lio_sam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_lisp _dcl_lio_sam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dcl_lio_sam_genlisp)
add_dependencies(dcl_lio_sam_genlisp dcl_lio_sam_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dcl_lio_sam_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dcl_lio_sam
)

### Generating Services
_generate_srv_nodejs(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dcl_lio_sam
)

### Generating Module File
_generate_module_nodejs(dcl_lio_sam
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dcl_lio_sam
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(dcl_lio_sam_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(dcl_lio_sam_generate_messages dcl_lio_sam_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_nodejs _dcl_lio_sam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_nodejs _dcl_lio_sam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dcl_lio_sam_gennodejs)
add_dependencies(dcl_lio_sam_gennodejs dcl_lio_sam_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dcl_lio_sam_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam
)

### Generating Services
_generate_srv_py(dcl_lio_sam
  "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam
)

### Generating Module File
_generate_module_py(dcl_lio_sam
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(dcl_lio_sam_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(dcl_lio_sam_generate_messages dcl_lio_sam_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/msg/cloud_info.msg" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_py _dcl_lio_sam_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/john/dclslam_ws/src/DCL-LIO-SAM/srv/save_map.srv" NAME_WE)
add_dependencies(dcl_lio_sam_generate_messages_py _dcl_lio_sam_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(dcl_lio_sam_genpy)
add_dependencies(dcl_lio_sam_genpy dcl_lio_sam_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS dcl_lio_sam_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dcl_lio_sam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/dcl_lio_sam
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(dcl_lio_sam_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(dcl_lio_sam_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(dcl_lio_sam_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(dcl_lio_sam_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dcl_lio_sam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/dcl_lio_sam
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(dcl_lio_sam_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(dcl_lio_sam_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(dcl_lio_sam_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(dcl_lio_sam_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dcl_lio_sam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/dcl_lio_sam
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(dcl_lio_sam_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(dcl_lio_sam_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(dcl_lio_sam_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(dcl_lio_sam_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dcl_lio_sam)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/dcl_lio_sam
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(dcl_lio_sam_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(dcl_lio_sam_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(dcl_lio_sam_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(dcl_lio_sam_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/dcl_lio_sam
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(dcl_lio_sam_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(dcl_lio_sam_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(dcl_lio_sam_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(dcl_lio_sam_generate_messages_py sensor_msgs_generate_messages_py)
endif()
