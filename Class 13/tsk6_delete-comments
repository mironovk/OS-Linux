#!/bin/sh
file=$1

echo > ./file_without_comments

#str=(sed -n 2p $file)
#echo $str
#while [ sed -n {$i}p $file ]
while read -r line 
do
	i=0
	arr=($line "\n")
	while [ ${arr[$i]} = "\n" ]
	do
		if [ ${arr[$i]} = "#" ]
		then
			break 1
		else
			echo -n ${arr[$i]} >> ./file_without_comments
		fi
		echo -n ${arr[$i]}
	done

	while read -n 1 chr 
	do
		
		if [ "$chr" = "#" ]
		then
			break 1
		else
			echo -n $chr >> ./file_without_comments
		fi
		echo -n $chr
	done # < $line
	echo -e "\n" >> ./file_without_comments
	echo -e "\n"

done < $file


exit 0
