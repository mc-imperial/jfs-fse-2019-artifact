#!/bin/bash
set -e
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../../" ; echo $PWD)"
DEFAULT_OPTION="1.6"

BASE_TAG="jfs_build_base:ubuntu1604"

function usage() {
  echo "$0 [<version>]"
  echo ""
  echo "<version> - 1.6"
  echo ""
}

if [ $# -eq 0 ]; then
  version="${DEFAULT_OPTION}"
elif [ $# -eq 1]; then
  version="$1"
else
  usage
  exit 1
fi

BUILD_OPTS=()

case "${version}" in
  1.6)
    # Keep legacy tag name
    FINAL_TAG="cvc4_build:ubuntu1604_1_6"
    CVC4_SRC_TARBALL="cvc4-1.6.tar.gz"
    BUILD_OPTS+=( \
      "--build-arg" \
      "CVC4_SRC_TARBALL=${CVC4_SRC_TARBALL}" \
      "--build-arg" \
      "CVC4_SRC_DIR_IN_TARBALL=cvc4-1.6" \
    )
  ;;
  *)
    echo "Unsupported version \"${version}\""
    usage
    exit 1
esac

if [ ! -f "${SCRIPT_DIR}/${CVC4_SRC_TARBALL}" ]; then
  echo "Source tar ball ${CVC4_SRC_TARBALL} doesn't exist"
  exit 1
fi

set -x
: ${FINAL_TAG?"FINAL_TAG was not set"}


DOCKER_MAJOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\1/')
DOCKER_MINOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\2/')
DOCKER_BUILD_FILE="${SCRIPT_DIR}/cvc4_build_ubuntu_16.04.Dockerfile"

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
