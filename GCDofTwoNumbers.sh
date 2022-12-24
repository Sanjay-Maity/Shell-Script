#Write a shell script to find the GCD(greatest common divisor) of two numbers.
echo "Enter first number : \c"
read num1
echo "Enter second number : \c"
read num2

if [ $num1 -lt $num2 ]
then
	while [ $num1 -ne 0 ]
	do
		temp=$num1
		num1=`expr $num2 % $num1`
		num2=$temp
	done
	echo "gcd of two numbers  : $num2"
else
	while [ $num2 -ne 0 ]
	do
		temp=$num2
		num2=`expr $num1 % $num2 `
		num1=$temp
	done
	echo "gcd of two numbers  : $num1"
fi
