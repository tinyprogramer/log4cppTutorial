cmake_minimum_required(VERSION 3.12.0)

#set PROJECT_NAME and version
project(testLog)
set(VERSION_MAJOR 0)
set(VERSION_MINOR 0)
set(VERSION_PATCH 1)


file(GLOB SOURCE_FILE *.cpp)
file(GLOB HEAD_FILE *.h)

set(log4cpp_DIR ${PROJECT_SOURCE_DIR}/lib/log4cpp)
find_package(log4cpp REQUIRED)
if(log4cpp_FOUND)
	message("found log4cpp, include dir is ${log4cpp_INCLUDE_DIR}")
	include_directories(${log4cpp_INCLUDE_DIR})
endif()

set(project_headers
	${HEAD_FILE})

set(project_sources
	${SOURCE_FILE})

add_executable(${PROJECT_NAME} ${project_headers} ${project_sources})
	
target_link_libraries(${PROJECT_NAME} ${log4cpp_LIBRARY})

set(CMAKE_INSTALL_PREFIX ${PROJECT_BINARY_DIR}/installed)
set(WINDEPLOYQT_DIR F:/QT/5.10.1/msvc2017_64/bin)
#exec windeployqt automatically when build install in VS
install(TARGETS ${PROJECT_NAME} DESTINATION /)

install(DIRECTORY ${PROJECT_SOURCE_DIR}/log DESTINATION /)
install(FILES ${PROJECT_SOURCE_DIR}/Mylog.conf DESTINATION /)
