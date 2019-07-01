# smt-runner

smt-runner is the infrastructure we use to

* Filter benchmarks.
* Run solvers on a set of benchmarks.
* Post-process those runs.
* Compute results and generate graphs.

## Dependencies

smt-runner was developed against Python 3.6. It might work with
other versions.

To use smt-runner in the context of this artifact you will need
to install Docker. We used `18.09.0` but the experiments should
still work with older/newer versions.

smt-runner also has a bunch of external python dependencies to install
them run

```
pip install --user -r requirements.txt
```

You can also use `virtualenv` to avoid installing globally or in
your user directory.

```
virtualenv venv
source venv/bin/activate
pip install -r requirements.txt
```

You may need to tweak the dependencies a bit dependening on your
system. I've had problems building `numpy` and `numa` with newer
python versions.
