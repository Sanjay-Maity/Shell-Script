#Write a shell script to find the binomial coefficient C(n , x).
echo "Calculation of binomial coefficient C(n , x): "
echo "Enter the value of n : \c"
read n
#temp1=$n
echo "Enter the value of x :\c"
read x
#temp2=$x
temp=`expr $n - $x `
result1=1
result2=1

if [ $x -ge $temp ]
then
	while [ $n -gt $x ]
	do
		result1=`expr $n \* $result1 `
		n=`expr $n - 1 `
	done
	while [ $temp -gt 1 ]
	do
		result2=`expr $temp \* $result2 `
		temp=`expr $temp - 1 `
	done
	echo "binomial coefficient C(n , x) : `expr $result1 / $result2 ` "
else
	while [ $n -gt $temp ]
	do
		result1=`expr $n \* $result1 `
		n=`expr $n - 1 `
	done
	while [ $x -gt 1 ]
	do
		result2=`expr $x \* $result2`
		x=`expr $x - 1 `
	done
	echo "binomial coefficient C(n , x) : `expr $result1 / $result2 ` "
fi
