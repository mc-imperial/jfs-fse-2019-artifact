# Benchmarks

These are the benchmarks used for our paper

## QF_BV

Quantifier free bitvectors. These benchmarks are in
`QF_BV.tar.xz`. They are tarballed and compressed
due to the large uncompressed size of the benchmarks.

## QF_BVFP

Quantifier free bitvectors and floating-point.
These benchmarks are in the `patched_qf_bvfp/QF_BVFP` directory.
Note these benchmarks are derived from the benchmarks in the `QF_BVFP`
directory. The benchmarks are created with the `patch_qf_bvfp.sh`.

This script effectively strips out comments. The reason for doing this is due
to the Colibri solver not being able to parse many of the benchmarks in the
`QF_BVFP` directory due to the comments in the benchmarks.

## QF_FP

Quantifier free floating-point. These are in the `QF_FP` directory.
