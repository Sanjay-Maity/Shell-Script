#Write a shell script to check whether the file have all the permissions or not.
echo "Enter file name : \c"
read name

if [ -f $name ]
then
	if [ -w $name -a -r $name -a -x $name ]
	then
		echo "The file  ($name)  have all permission "
	else
		echo "The file  ( $name)   have not all permission "
	fi
else
	echo "File not exits enter a valid file "
fi
