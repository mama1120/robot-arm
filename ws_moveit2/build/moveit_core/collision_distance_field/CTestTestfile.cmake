# CMake generated Testfile for 
# Source directory: /home/max/ws_moveit2/src/moveit2/moveit_core/collision_distance_field
# Build directory: /home/max/ws_moveit2/build/moveit_core/collision_distance_field
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test([=[test_collision_distance_field]=] "/usr/bin/python3" "-u" "/opt/ros/humble/share/ament_cmake_test/cmake/run_test.py" "/home/max/ws_moveit2/build/moveit_core/test_results/moveit_core/test_collision_distance_field.gtest.xml" "--package-name" "moveit_core" "--output-file" "/home/max/ws_moveit2/build/moveit_core/ament_cmake_gtest/test_collision_distance_field.txt" "--command" "/home/max/ws_moveit2/build/moveit_core/collision_distance_field/test_collision_distance_field" "--gtest_output=xml:/home/max/ws_moveit2/build/moveit_core/test_results/moveit_core/test_collision_distance_field.gtest.xml")
set_tests_properties([=[test_collision_distance_field]=] PROPERTIES  LABELS "gtest" REQUIRED_FILES "/home/max/ws_moveit2/build/moveit_core/collision_distance_field/test_collision_distance_field" TIMEOUT "60" WORKING_DIRECTORY "/home/max/ws_moveit2/build/moveit_core/collision_distance_field" _BACKTRACE_TRIPLES "/opt/ros/humble/share/ament_cmake_test/cmake/ament_add_test.cmake;125;add_test;/opt/ros/humble/share/ament_cmake_gtest/cmake/ament_add_gtest_test.cmake;86;ament_add_test;/opt/ros/humble/share/ament_cmake_gtest/cmake/ament_add_gtest.cmake;93;ament_add_gtest_test;/home/max/ws_moveit2/src/moveit2/moveit_core/collision_distance_field/CMakeLists.txt;36;ament_add_gtest;/home/max/ws_moveit2/src/moveit2/moveit_core/collision_distance_field/CMakeLists.txt;0;")
subdirs("../gtest")
