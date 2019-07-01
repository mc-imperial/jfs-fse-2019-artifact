#!/bin/bash
set -e
set -x
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"

"${SCRIPT_DIR}/src/scripts/Dockerfiles/build.sh"
