#!/bin/bash
set -x
set -e

: ${GOSAT_GIT_URL?"GOSAT_GIT_URL must be specified"}
: ${GOSAT_GIT_REVISION?"GOSAT_GIT_REVISION must be specified"}
: ${GOSAT_SRC_DIR?"GOSAT_SRC_DIR must be specified"}
: ${GOSAT_BUILD_DIR?"GOSAT_BUILD_DIR must be specified"}

git clone "${GOSAT_GIT_URL}" "${GOSAT_SRC_DIR}"
cd "${GOSAT_SRC_DIR}"
git checkout "${GOSAT_GIT_REVISION}"

mkdir -p "${GOSAT_BUILD_DIR}"
cd "${GOSAT_BUILD_DIR}"
cmake \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_DIR=/usr/lib/llvm-3.9/cmake/ \
  "${GOSAT_SRC_DIR}"
make -j $(nproc)
