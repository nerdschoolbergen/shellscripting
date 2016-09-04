> Hottest tip: Google is your friend.

# Exercise 1: Using a text editor in the terminal
- Open `vi` or `vim` from the terminal
- If you've never seen vim before, doing step 1-9 in [this interactive tutorial](http://www.openvim.com/) is a good place to start. Won't take long!
- Add some text
- Save the file
- Close `vim`
- Make your own `.vimrc` file by editing it in `vim`:
  - You should convert tabs to spaces
  - Make an alias so that `WQ` and `Wq` behave like the `wq` command

# Exercise 2: Basics of the shell
- List the contents of the directory you are currently standing in
- Print the path to the current working directory
- List the hidden files (if any) in a directory (hint: in unix, hidden files starts with dot (".ssh"))
- List all java files in a directory with human-readable size references ordered
  by the last-modified date. If you don't have any java files, try another type
  of files, preferable text files. (Hint: see the help documentation for the `ls` command's `l`, `t`, `r`, and `h` switches)
- Find your java executable. If you don't have Java installed, try any other well known executable on your machine.
- Use a for loop to print out the first few lines of each file in a directory.
  - Try to do this both as a script and as a one-liner in the shell
- Make a variable containing the name of a directory. 
  - Make a test that checks whether the name is a directory or a regular file.
  - Print out the line "This is a directory" if the variable names a directory. This time, print out the name of
  the directory using the variable so that the line reads "commandLineTips.txt
  is not a directory"
- List out files in `/var/log/` and listen to the tail end of the most recently
  used log file. This means that any new messages should appear in your
  terminal (this may take a few minutes depending on the activity level of your
  machine). How do you exit from the live view of the file?


# Exercise 3: deploy via a script 
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
#magic oneliner that moves you to the dir of the script file
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

# Done with time to spare?
Try to make your deploy-script use parameters with `getopt`s! 
- the parameters and their uses are: 
  - `-d` cleans the build, that is deletes all compiled classes and the directory they've been put in
  - `-c` compiles all java source files in a classes directory
  - `-j` make a jar of all class files
  - `-u` upload jar file to remote location
  - `-h` display usage
- When you run the script it should look like this (when you invoke all the steps): 
`bash myscript.sh -dcju`

# Still want more? 
Use the JSON java directory that you downloaded in the earlier exercises. 
- Try to extract all the lines that define public functions from the code files. Can
  you exclude class names?
- Make a script that recursively finds all the java files below the directory
  you're in. For each file, it should extract the function names and put the
  result into a new file (all the function names from all files into one file)
- Make your bash script directly executable so that you only have to type
  `./myScript.sh` rather than `bash myscript.sh`
- Try to remove everything but the function names from each line. Example:

  ```
  public void removePrefixOfFunctionName(String line) {
  ```
    
  would become
  
  ```
  removePrefixOfFunctionName(String line)
  ```
  
  or even just
  
  ```
  removePrefixOfFunctionName
  ```
