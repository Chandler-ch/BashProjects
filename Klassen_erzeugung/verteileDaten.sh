#!/bin/bash
temp=$(ls _templates)
class=$(ls _klassen)
classArray=($class)
tempArray=($temp)
rm -rdf $class
i=$(ls _klassen | wc -l)
echo $i

while [ 0 -lt $i ];
do
	((i--))
	echo ${classArray[$i]}
	mkdir ${classArray[$i]}
	touch ${classArray[$i]}/$temp
	for (( a=1; a<=3; a++));
	do
		touch ${classArray[$i]}/${tempArray[$a]};
	done
done
rm Dat*
