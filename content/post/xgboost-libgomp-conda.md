---
title: "solution to GOMP\_4.0 error when installing xgboost using anaconda and other problems"
date: 2017-08-28
tags: [xgboost, anaconda, conda]
---

This is due to the version of gcc in anaconda is too low.

To resolve:

```
conda install -y gcc
```

to install a newer version of gcc and remove older version of gcc

```
conda remove gcc
```

There is also some issues with linking against nccl static when installing
`nccl` from AUR which could be solved by changing the PKGBUILD file of `nccl`
to change from

```
make CUDA_HOME="/opt/cuda" lib
```

to

```
make CUDA_HOME="/opt/cuda" lib staticlib
```

or change `STATIC` to `SHARED` in `CMakeLists.txt`
per [this](https://github.com/dmlc/xgboost/tree/master/plugin/updater_gpu) (not tested).
