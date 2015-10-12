#!/usr/bin/env sh

rm Stanford*
rm -r imagenet*
rm log.txt
cd ../data/Stanford_Cars_49
rm imagenet*
cd ../../
sh ./Stanford_Cars_49/create_imagenet.sh
sh ./Stanford_Cars_49/make_imagenet_mean.sh
nohup sh ./Stanford_Cars_49/train_caffenet.sh >> ./Stanford_Cars_49/log.txt 2>&1 &

exit 0

