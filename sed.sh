#!/bin/bash

echo "All string has 3"
cat "files/numbers" | sed -n "/3/p"

echo ""
echo "All string from ones that have 123 pattern to string that has five pattern"
cat "files/numbers" | sed -n "/123/,/five/p"

echo "Replacing/deleting string"
x="abc"
echo "$x" | sed "s/abc/def/"
echo "abcdefabc" | sed "s/abc//"
echo "abcdefabc" | sed "s/abc//g"

echo ""
echo "Regex"
echo "svcc22222" | sed "s/[0-9]//g" 
echo "svcc434" | sed -n "s/[0-9]//gp"

echo ""
echo "Delete rows"

cat "rows" | sed "1,3d"

echo ""
echo "Delete range of rows"
sed "/123/,/five/d" "files/rows"

echo ""
echo "abcde" |sed -e "s/a/A/" -e "s/b/B/" -e "s/c/C/"

echo ""
echo "Replacing all delimeters with ,"
cat "files/delimiter" | sed -e "s/:/,/g" -e "s/|/,/g" -e "s/\^/,/g"