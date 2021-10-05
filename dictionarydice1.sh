declare -A dictionary
num=1
while [[ ${dictionary[$num]} -lt 10 ]]
do
        num=$(( RANDOM%(7-1)+1 ))
        dictionary[$num]=$(( ${dictionary[$num]}+1 ))
done
echo "key  " ${!dictionary[@]}
echo "value" ${dictionary[@]}

if [ ${dictionary[$num]} -eq 10 ]
then
        echo "maximum time reached="$num "  count is=10"
fi
        min=${dictionary[1]}

for ((num=1; num<=6; num++ ))
do
        if [ ${dictionary[$num]} -le $min ]
        then
                min=${dictionary[$num]}
        fi
done

for (( num=1; num<=6; num++ ))
do
        if [ $min -eq ${dictionary[$num]} ]
        then
                echo "minimum time reached="$num  " count is="${dictionary[$num]}
        fi
done
