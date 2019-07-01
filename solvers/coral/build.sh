#!/bin/bash
set -e
set -x
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../../" ; echo $PWD)"

BASE_TAG="jfs_build_base:ubuntu1604"
FINAL_TAG="coral_build:ubuntu1604"

DOCKER_MAJOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\1/')
DOCKER_MINOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\2/')
DOCKER_BUILD_FILE="${SCRIPT_DIR}/coral_build_ubuntu_16.04.Dockerfile"


BUILD_OPTS=()
if [ "${DOCKER_MAJOR_VERSION}${DOCKER_MINOR_VERSION}" -lt 1705 ]; then
  # Workaround limitation in older Docker versions where the FROM
  # command cannot be parameterized with an ARG.
  sed \
    -e '/^ARG BASE_IMAGE/d' \
    -e 's/${BASE_IMAGE}/'"${BASE_TAG}/" \
    "${DOCKER_BUILD_FILE}" > "${DOCKER_BUILD_FILE}.patched"
  DOCKER_BUILD_FILE="${DOCKER_BUILD_FILE}.patched"
else
  # This feature landed in Docker 17.05
  # See https://github.com/moby/moby/pull/31352
  BUILD_OPTS+=( \
    "--build-arg" \
    "BASE_IMAGE=${BASE_TAG}" \
  )
fi

# Urgh: Docker doesn't support symlinks so we have to copy here first
cp ../z3/build_z3.sh ./

docker build \
  -t "${FINAL_TAG}" \
  -f "${DOCKER_BUILD_FILE}" \
  "${BUILD_OPTS[@]}" \
  "${SCRIPT_DIR}"

# Run tests
docker run --rm "${FINAL_TAG}" \
  lit \
  -v \
  --param=coral_params="--enableIntervalBasedSolver --realPaverLocation=/home/user/realpaver/realpaver-0.4/bin/realpaver" \
  /home/user/smt2coral/tests
