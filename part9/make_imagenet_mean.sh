#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

DATA=data/part9
TOOLS=build/tools
NAME=part9

$TOOLS/compute_image_mean $NAME/imagenet_train_leveldb \
  $DATA/imagenet_mean.binaryproto

echo "Done."
