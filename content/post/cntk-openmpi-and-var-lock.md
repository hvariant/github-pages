---
title: "How to fix openmpi version and /var/lock permission after installing CNTK"
date: 2017-09-09
tags: [cntk, openmpi, deep learning, keras]
---

- Install cntk per the [official guide](https://docs.microsoft.com/en-us/cognitive-toolkit/setup-cntk-on-your-machine).

- download the latest stable [openmpi 1.10.x](https://www.open-mpi.org/software/ompi/v1.10/), CNTK uses this version of openmpi instead of commonly distributed openmpi 2.x for some reason.

- To avoid conflict with system version of this library, I installed this version in a user directory:

```
    cd <path-to-openmpi-1.10.x>
    ./configure --prefix=<absolute-path-to-openmpi-1.10.x>/build/
    make -j <number of threads> all install
```

- Due to this [bug](https://github.com/Microsoft/CNTK/issues/62) (which somehow hasn't been fixed after one and half years, good job team Microsoft), cntk will fail if current user doesn't have write access to `/var/lock`.
To fix this use sudo when running cntk, and if you want to use cntk as backend for keras, copy `~/.keras/` to `/root/`. Alternatively, compile cntk from source and patch it yourself, which is probably going to be [very tedious](https://docs.microsoft.com/en-us/cognitive-toolkit/setup-linux-binary-manual).

- Finally, to run cntk, you have to add the path of the previous compiled openmpi 1.10.x libraries to `LD_LIBRARY_PATH` and use sudo, i.e.:

```
    sudo -H LD_LIBRARY_PATH=<path-to-openmpi-1.10.x>/build/lib python <keras-script>.py
```
