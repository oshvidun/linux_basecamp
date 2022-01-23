#!/bin/bash
echo "Start script with DIR = $1 for user $2"
if ! [ $2 = "root" ]; then
echo "NEXT DIR FOUND:"
find $1 -user $2  | awk '{print $1, " is found!"}'
echo "ALL PROCESS:"
ps -u $2 -o pid,user,cmd
echo "End of script"
else
        echo "error exit code 42"
fi
