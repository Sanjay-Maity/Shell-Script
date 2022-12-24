#Write a shell script to find the LCD(least common divisor) of two numbers.
echo "Enter first number :\c"
read num1
echo "Enter second number:\c"
read num2

data1=$num1
data2=$num2

while [ $data1 -ne 0 ]
do
	temp=$data1
	data1=`expr $data2 % $data1 `
	data2=$temp
done

lcm=`expr \( $num1 \* $num2 \) / $data2 `
echo "LCM = $lcm"

