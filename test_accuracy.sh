NAME=acBlackLight
DATA=data/$NAME
actual=($(awk '{print $2}' $DATA/val.txt))

annotation=()
#cat $DATA/synset_words.txt | while read line
#do
#  	annotation[${#annotation[@]}]=$line
#	annotation[0]="TEST"
#done

lineno=`wc -l $DATA/synset.txt | awk '{print $1}'`

#echo $lineno

for((i=1;i<=$lineno;i++))
do
  annotation[$i-1]=`sed -n "$i p" $DATA/synset.txt`
done

#for((i=0;i<$lineno;i++))
#do
#  echo ${annotation[$i]}
#done

#for key in "${annotation[@]}"
#do
#  echo $key
#done

num=0
right=0

for i in $DATA/val/*.jpg
do
  out=$(./.build_release/examples/cpp_classification/my_classification.bin $NAME/deploy.prototxt $NAME/${NAME}_iter_10000.caffemodel $DATA/imagenet_mean.binaryproto $DATA/synset.txt $i)
  echo $out
  tag="${actual[$num]}"
  tag=`expr $tag`
  if [ "$out" = "${annotation[$tag]}" ]
	then
	  right=$(($right+1))
	  echo $right
	fi

  num=$(($num+1))
done

echo "right: $right"
echo "num: $num"
