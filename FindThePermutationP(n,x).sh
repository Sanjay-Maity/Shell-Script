#Write a shell script to find the permutation P(n,x).
echo "Calculation of permutation P(n,x) : "
echo "Enter the value of n : \c"
read n
echo "Enter the value of x : \c"
read x
ncp=1
while [ $n -gt $x ]
do
	ncp=`expr $n \* $ncp `
	n=`expr $n - 1 `
done
echo "Permutation p(n,x) : $ncp"
