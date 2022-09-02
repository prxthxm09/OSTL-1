#!/bin/bash

echo "Enter a,b and c in aX^2+bX+c"
read a
read b
read c
disc=$((b*b-4*a*c))
if [ $disc -eq 0 ]
then
option=0
elif [ $disc -lt 0 ]
then
option=1
else
option=2
fi

case $option in
	"0")
	r=$((-b/2*a))
	echo "The roots are real and equal: $r $r"
	;;
	"1")
	r=$((-b/2*a))
	im=$((sqrt(-$disc)/2*a))
	echo "The roots are imaginary, Real part is $r , Imaginary part is $im"
	;;
	"2")
	n1=`expr -b - sqrt($disc)`
	n2=`expr -b + sqrt($disc)`
	r1=$((n1/2*a))
	r2=$((n2/2*a))
	echo "The roots are real and distinct: $r1 $r2"
	;;
esac

exit 0
