#!/bin/bash
calculate_factorial(){
num=$1
fact=1
for((i=1;i<=num;i++));do
fact=$((fact*i))
done
echo $fact
}
echo "Enter a number"
read num_ber
factorial_result=$(calculate_factorial $num_ber)
echo "Factorial of $num_ber is:$factorial_result"

