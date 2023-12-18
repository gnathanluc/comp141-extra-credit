#!/bin/bash
echo "# comp141-extra-credit" >> README.md

git init

git add README.md

git commit -m "first commit"

git branch -M main

git remote add origin https://github.com/gnathanluc/comp141-extra-credit.git

git push -u origin main
# make a directory called output
mkdir output
#move/copy your textfile into output
mv ecgeorgia.txt output
ls output
#cd into output
cd output
#read the contents of your created text file into a new textfile called read.txt
tail ecgeorgia.txt > read.txt
#run a pwd command and ls command, save their outputs to files called pwd.txt and ls.txt
pwd > pwd.txt
ls > ls.txt
#make a copy of your text file into a third text file called copy.txt
cp ecgeorgia.txt copy.txt
ls -l *.txt
#create an alias to print today's date mm/dd/yyyy
alias today="now=$(date)"
#invoke that alias and save the output to a file called date.txt
echo "$now" > date.txt
# count the words in your text file into a file called textcount.txt
wc -w < ecgeorgia.txt > textcount.txt
# save first five lines of a ps command as process.txt
ps | head -5 > process.txt
# save first five lines of ifconfig command as netstat.txt
ifconfig | head -5 > netstat.txt
#save first five lines of mount command as mount.txt
mount | head -5 > mount.txt
#make a file called permissions.txt and give it rwx to all groups
> permissions.txt | chmod 777 permissions.txt
#create a shell variable called TESTENV1 and set it to "test"
TESTENV1="test"
#run a grep command for all words in your text file with at least 3 letters, save to a file called regex.txt
grep "^.[A-Za-z3-9]" ecgeorgia.txt > regex.txt
#navigate up a level-back to the extra-credit directory
cd -
#push contents to git up
