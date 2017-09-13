#!/bin/bash
read -p "Enter the total count for numbers to convert into binary : " num
shuf -i 0-5000 -n $num > input.txt
xxd -b input.txt | cut -d" " -f 2-7 >bin.txt 
cat bin.txt | tr -d '\n' | tr -d ' ' >random.txt
v=`cat random.txt`
q=0;
b=0
z=0
c=0
x=0
e=0
for x in $v
do
b=$(echo -n $v | wc -c)
echo "the hamming of weight of $b bit is:"
z=$(echo "$x"  |  tr -cd '1' | wc -c) >> output.txt
echo $z
e=$(echo "$z") 
echo "$e" >> $e.txt
done

for x in $v
do
b=$(echo -n $v | wc -c)
echo "$x"  |  tr -cd '1' >> $e.txt
done
