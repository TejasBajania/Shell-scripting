#!/bin/sh

# while loop

echo  "While loop output"
x=2
while [ $x -lt 6 ]
do
echo $x
x=`expr $x + 1`
done

# For loop
echo "For loop output"
for var in  1 2 3
do
echo $var
done

# Positional arguments

echo "\n Positional arguments"
echo "No of  arguments is $#"
echo "Name of the script $0"
echo "First argument $1"
echo "Second argument $2"

#  Storing output of commands

b=$(pwd)
c=`pwd`
echo $b
echo $c 
d=$(ls /bin | grep bash)
echo $d


# Exit codes of shell commands
read x
if [ $x -ne 10 ]
then
echo "failed"
#exit 1
else
echo "passed"
#exit 0
fi


# Shell variables

read y 
echo "This is a dynamic reading of variables  $y"
