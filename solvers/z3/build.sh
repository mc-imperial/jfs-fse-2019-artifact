#!/bin/bash
set -e
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../../" ; echo $PWD)"
DEFAULT_VERSION="4.6"

BASE_TAG="jfs_build_base:ubuntu1604"

function usage() {
  echo "$0 <version>"
  echo ""
  echo "<version> - 4.5, 4.6, 4.7.1"
  echo ""
}

if [ $# -eq 0 ]; then
  version="${DEFAULT_VERSION}"
elif [ $# -eq 1 ]; then
  version="$1"
else
  usage
  exit 1
fi

BUILD_OPTS=()

case "${version}" in
  4.5)
    # Keep legacy tag name
    FINAL_TAG="z3_build:ubuntu1604"
    BUILD_OPTS+=( \
      "--build-arg" \
      "Z3_GIT_REVISION=d57a2a6dce9291acf9c71a561252f3e133f0c894" \
    )
    ;;
  4.6)
    FINAL_TAG="z3_build:ubuntu1604_4_6_0"
    BUILD_OPTS+=( \
      "--build-arg" \
      "Z3_GIT_REVISION=z3-4.6.0" \
    )
    ;;
  4.7.1)
    FINAL_TAG="z3_build:ubuntu1604_4_7_1"
    BUILD_OPTS+=( \
      "--build-arg" \
      "Z3_GIT_REVISION=z3-4.7.1" \
    )
    ;;
  *)
    echo "Unsupported version \"${version}\""
    usage
    exit 1
esac

set -x
: ${FINAL_TAG?"FINAL_TAG was not set"}


DOCKER_MAJOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\1/')
DOCKER_MINOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\2/')
DOCKER_BUILD_FILE="${SCRIPT_DIR}/z3_build_ubuntu_16.04.Dockerfile"

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

if [ -n "${BUILD_CPU_SETS}" ]; then
  BUILD_OPTS+=( \
    "--cpuset-cpus" \
    "${BUILD_CPU_SETS}" \
  )
fi

docker build \
  -t "${FINAL_TAG}" \
  -f "${DOCKER_BUILD_FILE}" \
  "${BUILD_OPTS[@]}" \
  "${SCRIPT_DIR}"
