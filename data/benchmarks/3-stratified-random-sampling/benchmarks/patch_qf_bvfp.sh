#!/bin/bash
#
# This script creates a patched version of the QF_BVFP
# benchmarks. The reason for doing this is that Colibri's
# parser fails to parse many benchmarks due comments in
# the benchmarks.
#
# To workaround this we open the benchmarks with the
# `jfs-opt` tool and then write the result back to disk.
# Doing this strips out all the comments. Note we don't
# tell `jfs-opt` to run any optimizations so this should
# leave the constraints unmodified.
#
set -e
SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
SRC_DIR_ROOT="${SCRIPT_DIR}/QF_BVFP"
DEST_DIR_ROOT="${SCRIPT_DIR}/patched_qf_bvfp/QF_BVFP"

mkdir -p "${DEST_DIR_ROOT}"

JFS_OPT="${JFS_OPT:-/path/to/jfs-opt}"

if [ ! -f "${JFS_OPT}" ]; then
  echo "Can't find jfs-opt tool at \"${JFS_OPT}\""
  exit 1
fi

set -x
for q in $(find "${SRC_DIR_ROOT}" -iname '*.smt2' | sort); do
  rel_src="${q#${SRC_DIR_ROOT}}"
  dest_file="${DEST_DIR_ROOT}/${rel_src}"
  dest_dir="$(dirname ${dest_file})"
  mkdir -p "${dest_dir}"
  echo "Processing ${rel_src}"
  "${JFS_OPT}" "${q}" > "${dest_file}"
  # Append (check-sat) and (exit) commands
  echo -e "(check-sat)\n(exit)" >> "${dest_file}"
done
