NAME=Stanford_Cars_09
DATA=data/$NAME
for i in $DATA/val/*.jpg
do
  ./.build_release/examples/cpp_classification/my_classification.bin $NAME/deploy.prototxt $NAME/${NAME}_iter_40000.caffemodel $DATA/imagenet_mean.binaryproto $DATA/synset_words.txt $i
done
