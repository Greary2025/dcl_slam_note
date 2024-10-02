cmake_minimum_required(VERSION 2.8.3)
project(dcl_slam)

set(CMAKE_BUILD_TYPE "Release")
# set(CMAKE_CXX_FLAGS "-std=c++11")
set(CMAKE_CXX_STANDARD 14)
#set(CMAKE_CXX_FLAGS_RELEASE "-O3 -Wall -g -pthread")

find_package(catkin REQUIRED COMPONENTS
  # distributed_mapper_catkin
  # distributed-mapper
  # distributed_mapper
  # gtsam_catkin
  # gtsam
  # glog_catkin
  # glog
  tf
  roscpp
  std_msgs
  sensor_msgs
  geometry_msgs
  nav_msgs
  message_generation
  visualization_msgs
)

find_package(Boost REQUIRED COMPONENTS filesystem system thread)
find_package(libnabo)
find_package(PCL REQUIRED)
find_package(OpenMP REQUIRED)
find_package(OpenCV REQUIRED QUIET)
find_package(GTSAM REQUIRED QUIET)
# find_package(glog REQUIRED)
# find_package(distributed_mapper REQUIRED QUIET)

add_message_files(
  DIRECTORY msg
  FILES
  loop_info.msg
  global_descriptor.msg
  neighbor_estimate.msg
)

generate_messages(
  DEPENDENCIES
  geometry_msgs
  std_msgs
  nav_msgs
  sensor_msgs
)

catkin_package(
  INCLUDE_DIRS include
  DEPENDS GTSAM

  CATKIN_DEPENDS
  std_msgs
  nav_msgs
  geometry_msgs
  sensor_msgs
  message_runtime
  message_generation
  visualization_msgs
  # distributed_mapper_catkin
  # distributed-mapper
  # distributed_mapper
  LIBRARIES dcl_slam
)

# include directories
include_directories(
  include
  ${PCL_INCLUDE_DIRS}
  ${catkin_INCLUDE_DIRS}
  ${OpenCV_INCLUDE_DIRS}
  # 优先搜索路径
  # BEFORE 
  # ${GLOG_INCLUDE_DIRS}
  /usr/include/glog
  # distributed_mapper
  # ${distributed_mapper_INCLUDE_DIRS}
  /usr/local/include/distributed_mapper
)

# link directories
link_directories(
  include
  ${PCL_LIBRARY_DIRS}
  ${OpenCV_LIBRARY_DIRS}
  ${libnabo_LIBRARY_DIRS}
)

###########
## Build ##
###########
# dcl slam libraay
add_library(dcl_slam
  src/paramsServer.cpp
  src/distributedMappingBasis.cpp 
  src/distributedMapping.cpp
  src/distributedMappingVisualization.cpp
  src/distributedLoopClosure.cpp
  src/scanContextDescriptor.cpp
  src/lidarIrisDescriptor.cpp
  src/m2dpDescriptor.cpp)
target_link_libraries(dcl_slam ${catkin_LIBRARIES} ${PCL_LIBRARIES} ${OpenCV_LIBRARIES} ${OpenMP_CXX_FLAGS} ${libnabo_LIBRARIES})

