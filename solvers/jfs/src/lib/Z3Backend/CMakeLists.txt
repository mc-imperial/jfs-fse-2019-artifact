#===------------------------------------------------------------------------===#
#
#                         JFS - The JIT Fuzzing Solver
#
# Copyright 2017-2019 REDACTED
#
# This file is distributed under the MIT license.
# See LICENSE.txt for details.
#
#===------------------------------------------------------------------------===#
jfs_add_component(JFSZ3Backend
  Z3Solver.cpp
)
target_link_libraries(JFSZ3Backend PUBLIC JFSTransform JFSCore)
