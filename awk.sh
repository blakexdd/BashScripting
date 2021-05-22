#!/bin/bash

x="a b c d e"

echo $x | awk -F" " '{print $1}'
echo $x | awk -F" " '{print NF}'
echo $x | awk -F" " '{print $0}'
echo $x | awk -F" " '{print $1, $2}'
echo "abc" | awk 'BEGIN { FS = "" }; { print NF }'

echo "" | awk '
BEGIN { x = 10 }
{
    if (x % 2 == 0) {
        print "x is even"
    }
    else {
        print "x is odd"
    }
}
'

echo "" | awk '
{
    x = 0

    do {
        print "x: ",x
        x = x + 1
    } while( x < 4 )
}
'

awk '
BEGIN{
    for (i = 0; i < 5; i++){
        printf("%3d", i)
    }
}
'

echo ""
cat "files/linepares" | awk ' NR%2 {printf "%s\n", $0; printf ""; next}'