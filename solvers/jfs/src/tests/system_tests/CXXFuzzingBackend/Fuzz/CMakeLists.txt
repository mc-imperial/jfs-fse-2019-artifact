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

# This directory uses a customized test format
configure_file(lit.local.cfg
  lit.local.cfg
  COPYONLY
)
configure_file(test_format.py
  test_format.py
  COPYONLY
)