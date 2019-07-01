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
add_jfs_unit_test(Core
  MakeFromBuffer.cpp
)

target_link_libraries(Core${UNIT_TEST_EXE_SUFFIX} PRIVATE JFSSMTLIBRuntime)
target_link_libraries(Core${UNIT_TEST_EXE_SUFFIX} PRIVATE JFSSMTLIBRuntimeTestUtil)
