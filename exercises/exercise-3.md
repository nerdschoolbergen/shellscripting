# Exercise 3 - Deploy via a script 

:book: In this exercise you will write a script that will upload a JAR file with compiled java files to an existing box on Amazon Web Services. If you don't have java installed on your computer or are having problems with compiling the java files locally, it is possible to download and compile the java files directly in the AWS box. If you want to compile the files directly in the AWS box, remember to SSH into the box before you download the files.

You will learn to:

  - Create your own script with functionality
 
## 3.1 Create your script

:exclamation: Again, remember: Google is always your friend!

:pencil2: Create a script that executes with `./script.sh` rather than `bash script.sh`.

:book: The following list specifies what kind of functionality your script should have. 

:pencil2: Make sure you're in the same directory as your script is in.
  - Test this by executing the script from other directories and print the current working
  directory before and after the command.
  
:pencil2: Download the files in https://github.com/douglascrockford/JSON-java to your
  local laptop
  
:pencil2: Compile all the java files in the JSON directory to a `classes/` directory 

:pencil2: Make a JAR file of the classes directory with the name: `<yourFirstname>_<yourLastname>.jar` (example: karina_haugen.jar). Don't use spaces and æøå. 

:pencil2: Upload your JAR file using a secure copying method (login information and
  address will be listed in the presentation) 
  
:pencil2: SSH into the box and list your JAR file so that you can see it's there.

:pencil2: Print out some log messages after compiling and uploading

:book: Here is a template to get your started:

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
