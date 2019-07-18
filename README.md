# JFS paper artifact

**NOTE: A version of the paper artifact is also available on [figshare](https://figshare.com/articles/Just_Fuzz_It_Solving_Floating-point_Constraints_Using_Coverage-guided_Fuzzing/8427044).**

This directory contains files that supplement the JFS
paper by describing our data in more detail.

Note that this git repository relies on git-lfs. You will
need to install this in order to retrieve the large files
in the respository. Once you have git-lfs installed run

```
git-lfs clone https://github.com/mc-imperial/jfs-fse-2019-artifact
```

# `data`

This directory contains the experiment data, solver
configurations, and benchmark selection.


# `smt-runner`

This is the code we used to run experiments and process them.

# `solvers`

This contains the code necessary to build a Docker image for
each solver. In particular it contains the source code of
JFS used in the paper.
