#!/usr/bin/env bash
set -ex

rm -rf build && mkdir -p build
cp config.cmake build

cd build && cmake .. -G Ninja
#ninja -j1 2>&1 | tee tvm.log
ninja -j$(nproc) 2>&1 | tee tvm.log
