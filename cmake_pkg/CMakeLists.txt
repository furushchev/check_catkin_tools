cmake_minimum_required(VERSION 3.0.2)
project(cmake_pkg)

add_executable(test src/test.cpp)
target_link_libraries(test m)
include(GNUInstallDirs)
install(TARGETS test
  ARCHIVE DESTINATION ${CMAKE_INSTALL_LIBDIR}
  LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
  RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR})
