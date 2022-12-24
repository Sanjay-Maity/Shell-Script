# Write a shell script to modify ―cal command to display calendars of the specified months.

echo "Enter monthh number : \c"
read month
echo "Enter year : \c"
read year

cal $month $year
