#!/bin/bash
#types=(float32 float64)
types=(float32 float64)
roundingModes=(rne rna rtp rtn rtz)

ifile="convert_to_signed_bv_from_float32_rne.smt2"

for ty in ${types[*]}; do
  for roundingMode in ${roundingModes[*]}; do
    echo "processing ${ty}:${roundingMode}"
    ofile="convert_to_signed_bv_from_${ty}_${roundingMode}.smt2"
    if [ "${ofile}" == "${ifile}" ]; then
      echo "output and input cannot be same"
      continue
    fi
    upper_case_rm=${roundingMode^^}
    case "${ty}" in
      float32)
        expsize=8
        sigsize=24
      ;;
      float64)
        expsize=11
        sigsize=53
      ;;
      *)
        echo "unknown ty mode"
        exit 1
    esac
    #-e "s/_ FloatingPoint 11 53/_ FloatingPoint ${expsize} ${sigsize}/g" \
    #-e "s/Float<11,53>/Float<${expsize},${sigsize}>/g" \
    # -e "s/Float<8,24>/Float<${expsize},${sigsize}>/g" \
    #-e "s/to_fp 8 24/to_fp ${expsize} ${sigsize}/g" \
    sed \
      -e "s/RNE/${upper_case_rm}/g" \
      -e "s/_ FloatingPoint 8 24/_ FloatingPoint ${expsize} ${sigsize}/g" \
      ${ifile} > ${ofile}
  done
done
