# Solvers

This directory contains the sources/binaries to build the SMT solvers
used in our paper.

We build each solver as a Docker image. All of the builds depend
of an image named `jfs_build_base:ubuntu1604` which is generated
by the JFS build so you need to build JFS first before building
the other solvers.

## Building JFS

Run

```
jfs/scripts/Dockerfiles/build.sh
```

This will produce the `jfs_build_base:ubuntu1604` and
`jfs_build:ubuntu1604` Docker images.

## Building other solvers

Once you've successfully built JFS you can then run

```
<solver_name>/build.sh
```

where `<solver_name>` is the solver directory. This will
create the Docker image for the relevant solver.
