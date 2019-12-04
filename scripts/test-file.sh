#!/bin/bash
# test-file: Evaluate the status of a file
echo "Hey what's the File/Directory name (using the absolute path)?"
read FILE

if [ -e "$FILE" ]; then
	if [ -f "$FILE" ]; then
		echo "$FILE is a regular file."
	fi
	if [ -d "$FILE" ]; then
		echo "$FILE is a directory."
	fi
	if [ -r "$FILE" ]; then
		echo "$FILE is readable."
	fi
	if [ -w "$FILE" ]; then
		echo "$FILE is writable."
	fi
	if [ -x "$FILE" ]; then
		echo "$FILE is executable/searchable."
	fi
else
	echo "$FILE does not exist"
	exit 1
fi
exit



#!/bin/bash
read -p "enter file name: " source
file=$(find / -type f -name "$source" 2> /dev/null | head -n1)
if [[ -f "$file" ]]; then 
    echo "the file exists."
else
    echo "the file does not exist."
fi
