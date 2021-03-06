find_path(log4cpp_INCLUDE_DIR NAMES  log4cpp  PATHS 
	"${CMAKE_CURRENT_LIST_DIR}/include")
find_library(log4cpp_LIBRARY log4cpp.lib ${CMAKE_CURRENT_LIST_DIR}/lib)



if (log4cpp_INCLUDE_DIR AND log4cpp_LIBRARY)
  set(LOG4CPP_FOUND TRUE)
  set(LOG4CPP_LIBRARIES ${log4cpp_LIBRARY})
  set(LOG4CPP_INCLUDE_DIRS ${log4cpp_INCLUDE_DIR})
else ()
  set(LOG4CPP_FOUND FALSE)
  message(WARNING "LOG4CPP not found")
endif ()

if (LOG4CPP_FOUND)
  if (NOT LOG4CPP_FIND_QUIETLY)
    message(STATUS "Found LOG4CPP: ${LOG4CPP_LIBRARIES}")
  endif ()
else ()
  if (LOG4CPP_FIND_REQUIRED)
    message(STATUS "Looked for LOG4CPP libraries named ${LOG4CPPS_NAMES}.")
    message(FATAL_ERROR "Could NOT find LOG4CPP library")
  endif ()
endif ()