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
- List the contents of your PATH variable
- Create a new directory and add this directory to your PATH variable. Verify that it was added by repeating the previous step.

### [Go to exercise 3 :arrow_right:](./exercise-3.md)
