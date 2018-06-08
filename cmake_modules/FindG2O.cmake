# Locate the g2o libraries
# A general framework for graph optimization.
#
# This module defines
# G2O_FOUND, if false, do not try to link against g2o
# G2O_LIBRARIES, path to the libg2o
# G2O_INCLUDE_DIR, where to find the g2o header files
#
# Niko Suenderhauf <niko@etit.tu-chemnitz.de>
# Adapted by Felix Endres <endres@informatik.uni-freiburg.de>

IF(UNIX)

  IF(G2O_INCLUDE_DIR AND G2O_LIBRARIES)
    # in cache already
    SET(G2O_FIND_QUIETLY TRUE)
  ENDIF(G2O_INCLUDE_DIR AND G2O_LIBRARIES)

  MESSAGE(STATUS "Searching for g2o ...")
  FIND_PATH(G2O_INCLUDE_DIR
      NAMES core math_groups types
      PATHS /usr/local /usr
      PATH_SUFFIXES include/g2o include)

  IF (G2O_INCLUDE_DIR)
    MESSAGE(STATUS "Found g2o headers in: ${G2O_INCLUDE_DIR}")
  ENDIF (G2O_INCLUDE_DIR)

  FIND_LIBRARY(G2O_CLI_LIB
      NAMES g2o_cli
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_CORE_LIB
      NAMES g2o_core
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_CSPARSE_EXTENSION_LIB
      NAMES g2o_csparse_extension
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_EXT_FREEGLUT_MINIMAL_LIB
      NAMES g2o_ext_freeglut_minimal
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_INCREMENTAL_LIB
      NAMES g2o_incremental
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_INTERACTIVE_LIB
      NAMES g2o_interactive
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_INTERFACE_LIB
      NAMES g2o_interface
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_OPENGL_HELPER_LIB
      NAMES g2o_opengl_helper
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_PARSER_LIB
      NAMES g2o_parser
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SIMULATOR_LIB
      NAMES g2o_simulator
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_CHOLMOD_LIB
      NAMES g2o_solver_cholmod
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_CSPARSE_LIB
      NAMES g2o_solver_csparse
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_DENSE_LIB
      NAMES g2o_solver_dense
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_EIGEN_LIB
      NAMES g2o_solver_eigen
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_PCG_LIB
      NAMES g2o_solver_pcg
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_SLAM2D_LINEAR_LIB
      NAMES g2o_solver_slam2d_linear
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_SOLVER_STRUCTURE_ONLY_LIB
      NAMES g2o_solver_structure_only
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_STUFF_LIB
      NAMES g2o_stuff
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_DATA_LIB
      NAMES g2o_types_data
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_ICP_LIB
      NAMES g2o_types_icp
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SBA_LIB
      NAMES g2o_types_sba
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SCLAM2D_LIB
      NAMES g2o_types_sclam2d
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SIM3_LIB
      NAMES g2o_types_sim3
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SLAM2D_ADDONS_LIB
      NAMES g2o_types_slam2d_addons
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SLAM2D_LIB
      NAMES g2o_types_slam2d
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SLAM3D_ADDONS_LIB
      NAMES g2o_types_slam3d_addons
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)
  FIND_LIBRARY(G2O_TYPES_SLAM3D_LIB
      NAMES g2o_types_slam3d
      PATHS /usr/local /usr
      PATH_SUFFIXES lib)

  SET(G2O_LIBRARIES
      ${G2O_CLI_LIB}
      ${G2O_CORE_LIB}
      ${G2O_CSPARSE_EXTENSION_LIB}
      ${G2O_EXT_FREEGLUT_MINIMAL_LIB}
      ${G2O_INCREMENTAL_LIB}
      ${G2O_INTERACTIVE_LIB}
      ${G2O_INTERFACE_LIB}
      ${G2O_OPENGL_HELPER_LIB}
      ${G2O_PARSER_LIB}
      ${G2O_SIMULATOR_LIB}
      ${G2O_SOLVER_CHOLMOD_LIB}
      ${G2O_SOLVER_CSPARSE_LIB}
      ${G2O_SOLVER_DENSE_LIB}
      ${G2O_SOLVER_EIGEN_LIB}
      ${G2O_SOLVER_PCG_LIB}
      ${G2O_SOLVER_SLAM2D_LINEAR_LIB}
      ${G2O_SOLVER_STRUCTURE_ONLY_LIB}
      ${G2O_STUFF_LIB}
      ${G2O_TYPES_DATA_LIB}
      ${G2O_TYPES_ICP_LIB}
      ${G2O_TYPES_SBA_LIB}
      ${G2O_TYPES_SCLAM2D_LIB}
      ${G2O_TYPES_SIM3_LIB}
      ${G2O_TYPES_SLAM2D_ADDONS_LIB}
      ${G2O_TYPES_SLAM2D_LIB}
      ${G2O_TYPES_SLAM3D_ADDONS_LIB}
      ${G2O_TYPES_SLAM3D_LIB}
      )

  IF(G2O_LIBRARIES AND G2O_INCLUDE_DIR)
    SET(G2O_FOUND "YES")
    IF(NOT G2O_FIND_QUIETLY)
      MESSAGE(STATUS "Found libg2o: ${G2O_LIBRARIES}")
    ENDIF(NOT G2O_FIND_QUIETLY)
  ELSE(G2O_LIBRARIES AND G2O_INCLUDE_DIR)
    IF(NOT G2O_LIBRARIES)
      IF(G2O_FIND_REQUIRED)
        message(FATAL_ERROR "Could not find libg2o!")
      ENDIF(G2O_FIND_REQUIRED)
    ENDIF(NOT G2O_LIBRARIES)

    IF(NOT G2O_INCLUDE_DIR)
      IF(G2O_FIND_REQUIRED)
        message(FATAL_ERROR "Could not find g2o include directory!")
      ENDIF(G2O_FIND_REQUIRED)
    ENDIF(NOT G2O_INCLUDE_DIR)
  ENDIF(G2O_LIBRARIES AND G2O_INCLUDE_DIR)

ENDIF(UNIX)
