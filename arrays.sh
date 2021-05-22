#!/bin/bash

filename="files/names"
names_array=($(cat "$filename"))

echo "Simple loop"

for word in "${names_array[@]}"
do
    echo "$word"
done

echo "Correct loop with new line separator"

IFS=""
names_array=($(cat "$filename"))

for word in "${names_array[@]}"
do
    echo "$word"
done

read_array_from_file_and_print_it()
{
    IFS="$1"
    array=($(cat "$2"))

    echo "Printing array with IFS: $IFS and filename $2"

    for word in "${array[@]}"
    do
        echo "$word"
    done
}

read_array_from_file_and_print_it "" "files/names"
read_array_from_file_and_print_it " " "files/names"

fruits[0]="apple"
fruits[1]="banana"
fruits[2]="cherry"
fruits[3]="orange"
fruits[4]="pear"

array_length=${#fruits[@]}
echo "Array length $array_length"

for (( i=0; i<$array_length; i++ ));
do
    echo "Element $i of $array_length: ${fruits[$i]}"
done
