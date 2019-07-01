#!/bin/bash
set -e
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
ROOT_DIR="$(cd "${SCRIPT_DIR}/../../" ; echo $PWD)"
DEFAULT_VERSION="5.5.1"

BASE_TAG="jfs_build_base:ubuntu1604"

function usage() {
  echo "$0 [<version>]"
  echo ""
  echo "<version> - 5.4.1, 5.5.1, or 5.5.2"
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
  5.4.1)
    # Keep legacy tag name
    FINAL_TAG="mathsat_build:ubuntu1604"
    BUILD_OPTS+=( \
      "--build-arg" \
      "MATHSAT_VER=mathsat-5.4.1-linux-x86_64" \
    )
  ;;
  5.5.1)
    FINAL_TAG="mathsat_build:ubuntu1604_5_5_1"
    BUILD_OPTS+=( \
      "--build-arg" \
      "MATHSAT_VER=mathsat-5.5.1-linux-x86_64" \
    )
  ;;
  5.5.2)
    FINAL_TAG="mathsat_build:ubuntu1604_5_5_2"
    BUILD_OPTS+=( \
      "--build-arg" \
      "MATHSAT_VER=mathsat-5.5.2-linux-x86_64" \
    )
  ;;
  *)
    echo "Unsupported version \"${version}\""
    usage
    exit 1
  ;;
esac

set -x
: ${FINAL_TAG?"FINAL_TAG is not set"}

DOCKER_MAJOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\1/')
DOCKER_MINOR_VERSION=$(docker --version | sed 's/^Docker version \([0-9]\+\)\.\([0-9]\+\).*$/\2/')
DOCKER_BUILD_FILE="${SCRIPT_DIR}/mathsat_build_ubuntu_16.04.Dockerfile"

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

docker build \
  -t "${FINAL_TAG}" \
  -f "${DOCKER_BUILD_FILE}" \
  "${BUILD_OPTS[@]}" \
  "${SCRIPT_DIR}"
