#!/bin/bash

TOOLCHAIN="/home/ckosmic/psc/PSC-CrossCompile-Toolchain/armv8-sony-linux-gnueabihf"
export SYSROOT=${TOOLCHAIN}"/armv8-sony-linux-gnueabihf/sysroot"
export BINPATH=${TOOLCHAIN}"/bin"

export CROSS=${BINPATH}/armv8-sony-linux-gnueabihf-

export CC=${CROSS}gcc 
export CXX=${CROSS}g++
export AS=${CROSS}as
export LD=${CROSS}ld
export RANLIB=${CROSS}ranlib
export STRIP=${CROSS}strip
export AR=${CROSS}ar

export LIBS="-L"${SYSROOT}"/usr/lib"
export CFLAGS="-I"${SYSROOT}"/usr/include"
export COMPILER=gcc

make TARGET_PSC=1 -j4
