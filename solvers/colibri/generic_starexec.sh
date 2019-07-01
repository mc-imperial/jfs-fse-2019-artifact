#!/bin/bash -u

FILE=$(realpath $1)
cd $(dirname $0)
cd ..

#get the usage from the name of the script
# FSE-PAPER: HACK. The basename gets screwed up when
# we launch the script via docker so hack what
# we want
#BASE=$(basename $0)
BASE="starexec_run_default"
case $BASE in
    starexec_run_default1_*)
        RUN_RTE=true
        RUN_COLIBRI=true
        RTE_ANSWER="unknown"
        UNSAT_FINAL_ANSWER="unsat"
        CONF=${BASE#starexec_run_default1_}
        ;;
    starexec_run_default2_*)
        RUN_RTE=true
        RUN_COLIBRI=true
        RTE_ANSWER="sat"
        UNSAT_FINAL_ANSWER="unsat"
        export RTE_USE_ALL_HYP=YES
        CONF=${BASE#starexec_run_default2_}
        ;;
    starexec_run_default)
        RUN_RTE=false
        RUN_COLIBRI=true
        UNSAT_FINAL_ANSWER="unsat"
        CONF=""
        ;;
    starexec_run_without_rte_*)
        RUN_RTE=false
        RUN_COLIBRI=true
        UNSAT_FINAL_ANSWER="unsat"
        CONF=${BASE#starexec_run_without_rte_}
        ;;
    starexec_run_rte_only1_*)
        RUN_RTE=true
        RUN_COLIBRI=false
        RTE_ANSWER="sat"
        UNSAT_FINAL_ANSWER="unknown"
        CONF=${BASE#starexec_run_rte_only1_}
        ;;
    starexec_run_rte_only2_*)
        RUN_RTE=true
        RUN_COLIBRI=false
        RTE_ANSWER="sat"
        UNSAT_FINAL_ANSWER="unknown"
        export RTE_USE_ALL_HYP=YES
        CONF=${BASE#starexec_run_rte_only1_}
        ;;
    *)
        echo BAD COMMAND NAME
        echo "was \"$BASE\""
        exit 2
esac



if $RUN_COLIBRI; then
    bin/smtlib_tidier "$FILE" tidy.smt2
    ./smt_colibri_local_linux.sh tidy.smt2 $CONF > result 2>&1
    RES=$?
    if ${SHOW_OUTPUT:-false}; then grep -v "^sat$\|^unsat$\|^unknown$" result; fi
    case "$RES" in
        2)
            #Ensure that unknown is written for syntax error or unsupported
            echo unknown
            exit 2
            ;;
        1)
            echo sat
            # FSE-PAPER: HACK. Exit code when we determine sat should not be 1
            #exit 1
            exit 0
            ;;
        0)
            # FSE-PAPER: HACK. I don't know why the original script didn't handle
            # this case properly
            #unsat
            echo unsat
            exit 0
            ;;
        *)
            #Error?
            echo unknown
            exit 3
    esac
fi

if $RUN_RTE; then
    bin/smtlib_rte_checker "$FILE" rte.smt2
    bin/z3 -smt2 rte.smt2 > result 2>&1
    if grep result -q -e "^sat$"; then
        echo $RTE_ANSWER
        exit 1
    elif grep result -q -e "^unsat$"; then
        echo $UNSAT_FINAL_ANSWER
        exit 0
    fi
else
    echo $UNSAT_FINAL_ANSWER
    exit 0
fi

echo unknown
exit 2
