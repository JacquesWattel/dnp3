if (UNIX)
	
	set(PLATFORM_LINK_LIBRARIES pthread)   
	
	find_package(Threads)
		if(STATICLIBS)
		set(LIB_TYPE STATIC)
	else()
		set(LIB_TYPE SHARED)
	endif()
	
	set(CMAKE_C_FLAGS "-Wall -Wno-multichar -Wunused-variable -Wno-unused-parameter -Wunused-function -Wunused -Wno-system-headers -Wwrite-strings -save-temps")

	if (${CYGWIN})
		set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
	elseif(${MINGW})
		set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS}")
	else()
		set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -fPIC")
	endif()
	set(CMAKE_CXX_FLAGS "${CMAKE_C_FLAGS} -Wno-deprecated -Wno-parentheses -std=c++14")
 
	set(CMAKE_CXX_FLAGS_DEBUG          "-O0 -g")
	set(CMAKE_CXX_FLAGS_MINSIZEREL     "-Os -DNDEBUG")
	set(CMAKE_CXX_FLAGS_RELEASE        "-O4 -DNDEBUG")
	set(CMAKE_CXX_FLAGS_RELWITHDEBINFO "-O2 -g")

	# Compiler-specific C++14 activation.
	if ("${CMAKE_CXX_COMPILER_ID}" MATCHES "GNU")
		if(CMAKE_CXX_COMPILER_VERSION VERSION_LESS 4.9)
			message(FATAL_ERROR "${PROJECT_NAME} requires g++ 4.9 or greater")
		endif ()
	elseif ("${CMAKE_CXX_COMPILER_ID}" MATCHES "Clang")		
		if(CMAKE_CXX_COMPILER_VERSION VERSION_LESS 3.5)
			message(FATAL_ERROR "${PROJECT_NAME} requires clang 3.5 or greater")
		endif ()
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -stdlib=libc++")	
	else ()
		message(FATAL_ERROR "Your C++ compiler does not support C++14: ${CMAKE_CXX_COMPILER_ID} - ${CMAKE_CXX_COMPILER_VERSION}")
	endif ()

	if(COVERAGE)
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} --coverage")
	endif()

	if(PROFILE)
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg")
        endif()

	if (WERROR)
		set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Werror")
	endif()
	
endif()
