declare -A month
declare -A monthwise_births=([1]=0 [2]=0 [3]=0 [4]=0 [5]=0 [6]=0 [7]=0 [8]=0 [9]=0 [10]=0 [11]=0 [12]=0)
for((i=1;i<=50;i++))
do
  month[$i]=$((RANDOM%12 +1))
done
for((i=1;i<=12;i++))
do
  for j in ${month[@]}
  do
    if [ $i -eq $j ]
    then
      monthwise_births[$i]=$((${monthwise_births[$i]}+1))
    fi
  done
done
echo ${monthwise_births[@]}
