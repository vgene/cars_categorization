#!/usr/bin/env sh

./build/tools/caffe train \
    --solver=whole_bs/solver.prototxt
