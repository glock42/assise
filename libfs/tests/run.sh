#! /bin/bash

PATH=$PATH:.

LD_PRELOAD=../build/libmlfs.so MLFS_PROFILE=0 ${@}

