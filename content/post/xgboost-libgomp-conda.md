---
title: "solution to GOMP\_4.0 error when installing xgboost using anaconda"
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
