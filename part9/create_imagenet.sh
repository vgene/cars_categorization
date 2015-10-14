#!/usr/bin/env sh
# Create the imagenet lmdb inputs
# N.B. set the path to the imagenet train + val data dirs

DATA=data/part9
TOOLS=build/tools
NAME=part9

echo "Creating leveldb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/train/\
    $DATA/train.txt \
    $NAME/imagenet_train_leveldb 1
echo "Creating val lmdb..."

GLOG_logtostderr=1 $TOOLS/convert_imageset \
    $DATA/val/\
    $DATA/val.txt \
    $NAME/imagenet_val_leveldb 1

echo "Done."
