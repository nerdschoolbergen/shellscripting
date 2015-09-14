ls

pwd

#(-d lists directory name instead of contents, first time with wildcard)
ls -ad .* 

ls -ltrh ~/git/shellscripting/JSON-java/*.java

which java

#oneliner for the shell, NOTE path issue: 
for file in `ls git/shellscripting`; do head git/shellscripting/$file; done

#script syntax. This can be copy pasted into commandline or run the script
for file in `ls git/shellscripting`
do
    head git/shellscripting/$file
done

#make a variable
dir=vm

# one liner: spaces are IMPORTANT. Tip for osx: karabiner if you have problems 
# with spaces and seemingly correct syntax. Use karabiner to convert non-breaking
# spaces to normal spaces
if [ -d $dir ] ; then echo $dir is a directory; else echo $dir is a file; fi

#script syntax complete
if [ -d $dir ]
then
    echo $dir is a directory
else 
    echo $dir is a file
fi


ls -ltr /var/log/
#tail -f means wait for more to be added to the end of the file. 
#tail -F means the same, but don't give error if the file stops existing and
#reappears. 
tail -f /var/log/system.log
#To exit: ctrl c
