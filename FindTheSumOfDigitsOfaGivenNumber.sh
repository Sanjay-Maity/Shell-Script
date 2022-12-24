#Write a shell script to find the sum of digits of a given number.
echo "Enter number to get sum of its digits : \c"
read num
sum=0
until [ $num -eq 0 ]
do
	sum=`expr \( $num % 10 \) + $sum `
	num=`expr $num / 10 `
done

echo "sum of digits of number is : $sum "
