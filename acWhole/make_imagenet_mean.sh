#!/usr/bin/env sh
# Compute the mean image from the imagenet training lmdb
# N.B. this is available in data/ilsvrc12

DATA=data/acWhole
TOOLS=build/tools
NAME=acWhole

$TOOLS/compute_image_mean $NAME/imagenet_train_leveldb \
  $DATA/imagenet_mean.binaryproto

echo "Done."
