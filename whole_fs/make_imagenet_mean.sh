#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

DATA=data/whole_fs
TOOLS=build/tools
NAME=whole_fs

$TOOLS/compute_image_mean $NAME/imagenet_train_leveldb \
  $DATA/imagenet_mean.binaryproto

echo "Done."
