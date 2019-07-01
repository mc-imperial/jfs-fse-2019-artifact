#!/bin/bash
set -e
set -x
set -o pipefail


SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"

source ${SCRIPT_DIR}/common.sh

TOOL_NAME="result-info-plot-quantile-plot.py"

function usage() {
  set +x
  echo "$0 <bset> [OPTIONS]"
  echo ""
  echo "OPTIONS are the options to ${TOOL_NAME}"
  set -x
}

TOOL="${SMT_RUNNER_ROOT}/tools/${TOOL_NAME}"

TOOL_OPTS=( \
  --max-exec-time 900 \
  --mode time \
)


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
    portfolio_jfs_mathsat5 \
  )
  LEGEND_NAMES='["COLIBRI", "CORAL-AVM", "CORAL-PSO", "CVC4", "goSAT", "JFS", "MathSAT5", "XSat", "Z3", "JFS+MathSAT5"]'
else
  SOLVER_NAMES=( \
    colibri \
    cvc4 \
    jfs_lf_fail_fast_smart_seeds \
    mathsat5 \
    z3 \
    portfolio_jfs_mathsat5 \
  )
  LEGEND_NAMES='["COLIBRI", "CVC4",  "JFS", "MathSAT5",  "Z3", "JFS+MathSAT5"]'
fi

SOLVER_FILES=()
for f in ${SOLVER_NAMES[@]}; do
  SOLVER_FILES+=("${DIR_PREFIX}/${f}/output_merged.yml")
done

"${TOOL}" \
  "${TOOL_OPTS[@]}" \
  --legend-name-map <( echo "${LEGEND_NAMES}" ) \
  "${SOLVER_FILES[@]}"
