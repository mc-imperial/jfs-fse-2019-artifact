#!/bin/bash
set -e
set -x
set -o pipefail


SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"

source ${SCRIPT_DIR}/common.sh

TOOL_NAME="result-info-merged-event-count.py"

function usage() {
  set +x
  echo "$0 <bset> [OPTIONS]"
  echo ""
  echo "OPTIONS are the options to ${TOOL_NAME}"
  set -x
}

TOOL="${SMT_RUNNER_ROOT}/tools/${TOOL_NAME}"

TOOL_OPTS=()


if [ $# -eq 0 ]; then
  usage
  exit 1
fi
bset="${1}"
bset_upper=$(echo "${bset}" | awk ' { print toupper($0) }')
shift
TOOL_OPTS+=("$@")

#TOOL_OPTS+=(--title "JFS configuration comparison on ${bset_upper}")

DIR_PREFIX="${MERGED_DIR}/${bset}"

if [ "${bset}" = "qf_fp" ]; then
  SOLVER_NAMES=( \
    colibri \
    coral_avm \
    coral_pso \
    cvc4 \
    gosat \
    jfs_lf_fail_fast_smart_seeds \
    mathsat5 \
    xsat \
    z3 \
  )
  TOOL_OPTS+=(--index-for-compute-sets 5)
else
  SOLVER_NAMES=( \
    colibri \
    cvc4 \
    jfs_lf_fail_fast_smart_seeds \
    mathsat5 \
    z3 \
  )
  TOOL_OPTS+=(--index-for-compute-sets 2)
fi

SOLVER_FILES=()
for f in ${SOLVER_NAMES[@]}; do
  SOLVER_FILES+=("${DIR_PREFIX}/${f}/output_merged.yml")
done

"${TOOL}" \
  "${TOOL_OPTS[@]}" \
  "${SOLVER_FILES[@]}"
