# Check the number is prime or not

echo "Enter a number to check Prime or not : \c"
read num

temp=2
if [ $num -eq 1 ]
then
	echo "The number $num is not prime not composit "
else
while [ $temp -le `echo "sqrt( $num )" | bc ` ]
do
	if [ `expr $num % $temp ` -eq 0 ]
	then
		echo "Number $num is not prime"
		temp=-1
		break
	fi
	temp=`expr $temp + 1 `
done

if [ $temp -ne -1 ]
then
	echo "Number $num  is prime "
fi
fi


