# Exercise 3: Deploy via a script 
We've set up a box on Amazon Web Services that you can use for this exercise.

In this exercise you should write a script that can:
- Execute with `./script.sh` rather than `bash script.sh`
- make sure you're in the same directory as your script is in (test this by
  executing the script from other directories and print the current working
  directory before and after the command)
- Download the files in https://github.com/douglascrockford/JSON-java to your
  local laptop
- Compile all the java files in the JSON directory to a `classes/`
  directory
- Make a JAR file of the classes directory
- Upload your JAR file using a secure copying method (login information and
  address will be listed) 
- SSH into the box and list your JAR file so that you can see it's there.
- Print out some log messages after compiling and uploading

Here is a template to get your started:
```
#!/bin/bash
#above line is the shebang which makes it executable with ./script.sh
#make sure to set permissions so that your user can execute the file (chmod u+x)

pwd

#magic oneliner that moves you to the dir of the script file:
cd "$( dirname "${BASH_SOURCE[0]}" )"

pwd

# " evaulates the contents
# ' does not evaluate the contents inbetween. Test with 
#param=hey
#echo "$param"
#echo '$param'

#1. git clone the repository in the assigment
#2. create a new directory to put compile into
#3. compile all .java files into the newly created dir
#4. write some progress to the console
#5. write the contents of the new dir to the console
#6. make a JAR file out of the compiled code
#7. write some progress to the console
#8. securely upload the JAR to the remote box
#9. write some progress to the console
#10. securely login to the remote box and verify that the JAR file is there
```
### [Go to bonus exercise 1 :arrow_right:](./bonus-1.md)
