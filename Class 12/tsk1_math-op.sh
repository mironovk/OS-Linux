#!/bin/sh

read a b 

c=$a+$b
echo "no_spacing $c"

c=`expr $a + $b`
echo "expr $c"

((c=a+b))
echo "(()) $c"

let c=a+b
echo "let $c"

c=$(echo $a+$b | bc)
echo "bc $c"

exit 0
