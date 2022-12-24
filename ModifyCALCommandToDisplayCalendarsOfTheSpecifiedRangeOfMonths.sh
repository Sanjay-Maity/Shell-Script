#Write a shell script to modify ―cal command to display calendars of the specified range of months.
echo "Enter the starting month number : \c "
read stmonth
echo "Enter the last month number : \c"
read lsmonth

echo "Enter the year : \c"
read year

while [ $stmonth -le $lsmonth ]
do
	cal $stmonth $year
	stmonth=`expr $stmonth + 1 `
done
