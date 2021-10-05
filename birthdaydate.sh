

declare -A dictionary
num=1
for (( count=1; count<=50; count++ ))
do
        num=$(( RANDOM%(13-1)+1 ))
        dictionary[$num]=$(( ${dictionary[$num]}+1 ))
count=$(($count+1))
done
echo "month   " ${!dictionary[@]}
echo "birthday" ${dictionary[@]}
