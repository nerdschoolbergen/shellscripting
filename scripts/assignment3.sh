#!/bin/bash
#above line is the shebang which makes it executable with ./script.sh
#make sure to set permissions so that your user can execute the file (chmod u+x)
pwd
#magic oneliner that moves you to the dir of the script file
cd "$( dirname "${BASH_SOURCE[0]}" )"
pwd
# " evaulates the contents
# ' does not evaluate the contents inbetween. Test with 
#param=hey
#echo "$param"
#echo '$param'

git clone https://github.com/douglascrockford/JSON-java
cd JSON-java
mkdir classes
javac *.java -d classes
echo Compiled java classes
cd classes
ls
tree
cd ..
jar vfc siv_hollup.jar classes
echo Jar created
scp siv_hollup.jar user@box: 
echo "Jar file uploaded"
ssh user@box "ls *.jar"


