cmake_minimum_required(VERSION 3.8)
project(robot_control)

if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
  add_compile_options(-Wall -Wextra -Wpedantic)
endif()

# find dependencies
find_package(ament_cmake REQUIRED)
find_package(moveit_ros_planning_interface REQUIRED)
find_package(rclcpp REQUIRED)
find_package(sensor_msgs REQUIRED)
find_package(moveit_visual_tools REQUIRED)

add_executable(joint_position_receiver src/joint_position_receiver.cpp)
ament_target_dependencies(joint_position_receiver rclcpp moveit_msgs rclcpp_action)

install(TARGETS
joint_position_receiver
  DESTINATION lib/${PROJECT_NAME})

add_executable(multiple_positions src/multiple_positions.cpp)
ament_target_dependencies(multiple_positions rclcpp sensor_msgs moveit_ros_planning_interface)

install(TARGETS multiple_positions
  DESTINATION lib/${PROJECT_NAME})
  
  add_executable(send_all_joints src/send_all_joints.cpp)
ament_target_dependencies(send_all_joints rclcpp moveit_msgs rclcpp_action)

install(TARGETS
  send_all_joints
  DESTINATION lib/${PROJECT_NAME})

add_executable(robot_arm_execution src/robot_arm_execution.cpp)
target_include_directories(robot_arm_execution PUBLIC
  $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}/include>
  $<INSTALL_INTERFACE:include>)

target_compile_features(robot_arm_execution PUBLIC c_std_99 cxx_std_17)  # Require C99 and C++17
ament_target_dependencies(
  robot_arm_execution
  "moveit_ros_planning_interface"
  "rclcpp"
)

install(TARGETS robot_arm_execution
  DESTINATION lib/${PROJECT_NAME})

if(BUILD_TESTING)
  find_package(ament_lint_auto REQUIRED)
  # the following line skips the linter which checks for copyrights
  # comment the line when a copyright and license is added to all source files
  set(ament_cmake_copyright_FOUND TRUE)
  # the following line skips cpplint (only works in a git repo)
  # comment the line when this package is in a git repo and when
  # a copyright and license is added to all source files
  set(ament_cmake_cpplint_FOUND TRUE)
  ament_lint_auto_find_test_dependencies()
endif()

ament_package()
