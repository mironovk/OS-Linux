#!/bin/sh

read -a arr
read i
#
#echo ${arr[1]}
echo input array: ${arr[@]}
#append=(${arr[@]::$i} 1 2 3)
#echo appended array: ${append[@]}
#
#echo ${arr[@]::$i}
#echo ${arr[@]:($i+1)}
#
new_arr=(${arr[@]::$i} ${arr[@]:($i+1)})
echo new array: ${new_arr[@]}

exit 0
