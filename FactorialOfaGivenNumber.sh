#Write a shell script to find the factorial of a given number.
echo "Enter number to get factorial : \c"
read data

fac=1

while [ $data -gt 1 ]
do
	fac=`expr $data \* $fac `
	data=`expr $data - 1 `
done
echo "Factorial : $fac"
