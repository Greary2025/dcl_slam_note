# generated from catkin/cmake/template/pkg.context.pc.in
CATKIN_PACKAGE_PREFIX = ""
PROJECT_PKG_CONFIG_INCLUDE_DIRS = "${prefix}/include".split(';') if "${prefix}/include" != "" else []
PROJECT_CATKIN_DEPENDS = "std_msgs;nav_msgs;geometry_msgs;sensor_msgs;message_runtime;message_generation;visualization_msgs".replace(';', ' ')
PKG_CONFIG_LIBRARIES_WITH_PREFIX = "-ldcl_slam".split(';') if "-ldcl_slam" != "" else []
PROJECT_NAME = "dcl_slam"
PROJECT_SPACE_DIR = "/usr/local"
PROJECT_VERSION = "1.0.0"
