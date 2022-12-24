#Write a shell script to compare two files and if found equal asks the user to delete the duplicate file.

echo "Enter first file name : \c"
read data1
echo "Enter second file name : \c"
read data2

string1=`cat $data1`
string2=`cat $data2`
##echo $string1
##echo $string2

if [ "$string1" = "$string2" ]
then
	echo "file same delete one"
else
	echo "different file"
fi


