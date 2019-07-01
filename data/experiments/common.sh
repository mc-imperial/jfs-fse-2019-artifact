###############################################################################
# Common functions and data
#
# These are need by various scripts
###############################################################################

# List of solvers to use.
# Look at `get_solver_config()` for the valid solver names.
solvers=( \
  colibri \
  coral_pso \
  coral_avm \
  cvc4 \
  gosat \
  jfs_lf_fail_fast \
  jfs_lf_fail_fast_smart_seeds \
  jfs_pf_fail_fast \
  mathsat5 \
  xsat \
  z3 \
)

JFS_ENABLE_VALIDATION_VARIANTS="${JFS_ENABLE_VALIDATION_VARIANTS:-0}"

if [ "${JFS_ENABLE_VALIDATION_VARIANTS}" -eq 1 ]; then
  # Add validation variants
  solvers+=( \
    jfs_validate_lf_fail_fast \
    jfs_validate_lf_fail_fast_smart_seeds \
    jfs_validate_pf_fail_fast \
  )
fi

# Benchmark sets to use.
# See `get_invocation_info()` for valid benchmark sets.
bsets=(qf_fp qf_bvfp qf_bv)

# List of runs to perform.
# It is assumed that the list is a list of integers.
ns=(0 1 2 3)

SCRIPT_DIR="$( cd ${BASH_SOURCE[0]%/*} ; echo $PWD )"
INVOCATIONS_DIR="${SCRIPT_DIR}/../benchmarks/3-stratified-random-sampling"

# NOTE: We use more generic configurations for experiment reproduction.
# The commented out path points to the solver configurations actually used for experiments.
#CONFIG_ROOT="${SCRIPT_DIR}/solver_configs/mars"
CONFIG_ROOT="${SCRIPT_DIR}/solver_configs/generic"

RUNS_DIR_SUFFIX=""
BASE_DIR="${SCRIPT_DIR}/runs${RUNS_DIR_SUFFIX}"
SMT_RUNNER_ROOT="${SMT_RUNNER_ROOT:-${SCRIPT_DIR}/../../smt-runner}"
USE_VIRTUAL_ENV="${USE_VIRTUAL_ENV:-0}"
VIRTUALENV_SCRIPT="${SMT_RUNNER_ROOT}/venv/bin/activate"

if [ "${USE_VIRTUAL_ENV}" -eq 1 ]; then
  if [ -f "${VIRTUALENV_SCRIPT}" ]; then
    source "${VIRTUALENV_SCRIPT}"
  fi
fi

MERGED_DIR="${SCRIPT_DIR}/merged${RUNS_DIR_SUFFIX}"

function get_benchmark_base() {
  bset="$1"
  base_dir="${SCRIPT_DIR}/../benchmarks/3-stratified-random-sampling/benchmarks/"
   case "${bset}" in
     qf_fp|qf_bv)
       echo "${base_dir}"
     ;;
     qf_bvfp)
       # We used a patched set to workaround bugs in Colibri's SMT-LIB parser
       echo "${base_dir}/patched_qf_bvfp/"
     ;;
   *)
     echo "Unrecognised bset \"${bset}\""
     exit 1
   esac
}


function get_invocation_info() {
  : ${INVOCATIONS_DIR?"INVOCATIONS_DIR must be specified"}
  bset="$1"
  case "${bset}" in
    qf_fp)
      echo "${INVOCATIONS_DIR}/qf_fp_filtered_final_ii.yml"
    ;;
    qf_bvfp)
      echo "${INVOCATIONS_DIR}/qf_bvfp_filtered_final_ii.yml"
    ;;
    qf_bv)
      echo "${INVOCATIONS_DIR}/qf_bv_filtered_final_ii.yml"
    ;;
  *)
    echo "Unrecognised bset \"${bset}\""
    exit 1
  esac
}

function is_jfs_solver() {
 solver="$1"
 case ${solver} in
   jfs_*)
     echo 1
   ;;
   *)
     echo 0
   ;;
  esac
}

function get_solver_config() {
  : ${CONFIG_ROOT?"CONFIG_ROOT must be specified"}
  solver="$1"
  bset="$2"
  case "${solver}" in
    z3)
      echo "${CONFIG_ROOT}/z3_docker_generic.yml"
    ;;
    mathsat5)
      case "${bset}" in
        qf_bv)
          echo "${CONFIG_ROOT}/mathsat5_qf_bv_docker_generic.yml"
        ;;
        qf_bvfp|qf_fp)
          echo "${CONFIG_ROOT}/mathsat5_qf_fp_qf_bvfp_docker_generic.yml"
        ;;
        *)
          echo "Unknown bset \"${bset}\""
          exit 1
        ;;
      esac
    ;;
    cvc4)
      echo "${CONFIG_ROOT}/cvc4_docker_generic.yml"
    ;;
    jfs_validate_lf_fail_fast_smart_seeds)
      echo "${CONFIG_ROOT}/model_validate/jfs_lf_fail_fast_smart_seeds_validate_model_docker_generic.yml"
    ;;
    jfs_validate_lf_fail_fast)
      echo "${CONFIG_ROOT}/model_validate/jfs_lf_fail_fast_validate_model_docker_generic.yml"
    ;;
    jfs_validate_pf_fail_fast)
      echo "${CONFIG_ROOT}/model_validate/jfs_pf_fail_fast_validate_model_docker_generic.yml"
    ;;
    jfs_lf_fail_fast)
      echo "${CONFIG_ROOT}/jfs_lf_fail_fast_docker_generic.yml"
    ;;
    jfs_lf_fail_fast_smart_seeds)
      echo "${CONFIG_ROOT}/jfs_lf_fail_fast_smart_seeds_docker_generic.yml"
    ;;
    jfs_pf_fail_fast)
      echo "${CONFIG_ROOT}/jfs_pf_fail_fast_docker_generic.yml"
    ;;
    colibri)
      # We'll run on all benchmarks even though possibly not sound
      echo "${CONFIG_ROOT}/colibri_docker_generic.yml"
    ;;
    xsat)
      case "${bset}" in
        qf_bv|qf_bvfp)
          # Not supported by XSat.
          echo "SKIP"
        ;;
        qf_fp)
          echo "${CONFIG_ROOT}/xsat_docker_generic.yml"
        ;;
        *)
          echo "Unrecognised bset \"${bset}\""
          exit 1
      esac
    ;;
    gosat)
      case "${bset}" in
        qf_bv|qf_bvfp)
          # Not supported by goSAT.
          echo "SKIP"
        ;;
        qf_fp)
          echo "${CONFIG_ROOT}/gosat_docker_generic.yml"
        ;;
        *)
          echo "Unrecognised bset \"${bset}\""
          exit 1
      esac
    ;;
    coral_pso)
      case "${bset}" in
        qf_bv|qf_bvfp)
          # Not supported by Coral.
          echo "SKIP"
        ;;
        qf_fp)
          echo "${CONFIG_ROOT}/coral_pso_docker_generic.yml"
        ;;
        *)
          echo "Unrecognised bset \"${bset}\""
          exit 1
      esac
    ;;
    coral_avm)
      case "${bset}" in
        qf_bv|qf_bvfp)
          # Not supported by Coral.
          echo "SKIP"
        ;;
        qf_fp)
          echo "${CONFIG_ROOT}/coral_avm_docker_generic.yml"
        ;;
        *)
          echo "Unrecognised bset \"${bset}\""
          exit 1
      esac
    ;;
    *)
      echo "Unrecognised solver \"${1}\""
      exit 1
  esac
}

function get_solver_name() {
  solver="$1"
  case "${solver}" in
    z3)
      echo "Z3"
    ;;
    mathsat5)
      echo "MathSAT5"
    ;;
    jfs*)
      echo "JFS"
    ;;
    colibri)
      echo "COLIBRI"
    ;;
    xsat)
      echo "XSat"
    ;;
    gosat)
      echo "goSAT"
    ;;
    coral_pso)
      echo "CORAL-PSO"
    ;;
    coral_avm)
      echo "CORAL-AVM"
    ;;
    cvc4)
      echo "CVC4"
    ;;
    portfolio_jfs_mathsat5)
      echo "JFS+MathSAT5"
    ;;
    *)
      echo "Unrecognised solver \"${1}\""
      exit 1
  esac
}
