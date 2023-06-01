execute_process(COMMAND "/data/robot_ws/build/sophon_robot/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/data/robot_ws/build/sophon_robot/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
