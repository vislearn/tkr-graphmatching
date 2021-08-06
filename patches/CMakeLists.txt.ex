0a
cmake_minimum_required(VERSION 3.13)
cmake_policy(VERSION 3.13)
project(tkr-graphmatching)

include(GNUInstallDirs)

set(SRC_FILES
	GraphMatching.cpp
	SubgradientDecomposition.cpp
	MinCost/MinCost.cpp
	QPBO/QPBO.cpp
	QPBO/QPBO_extra.cpp
	QPBO/QPBO_maxflow.cpp
	QPBO/QPBO_postprocessing.cpp)

add_library(tkrgm_shared SHARED ${SRC_FILES})
add_library(tkrgm_static STATIC ${SRC_FILES})
set_target_properties(tkrgm_shared tkrgm_static PROPERTIES OUTPUT_NAME tkrgm)

add_executable(tkrgm example.cpp)
target_link_libraries(tkrgm tkrgm_shared)

install(TARGETS tkrgm DESTINATION "${CMAKE_INSTALL_BINDIR}")
install(TARGETS tkrgm_shared tkrgm_static DESTINATION "${CMAKE_INSTALL_LIBDIR}")
.
wq
