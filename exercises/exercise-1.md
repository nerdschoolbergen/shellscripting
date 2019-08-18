# Exercise 1 - Basics of the shell

You will learn to:

- Navigate through files and directories using a shell
- Create simple bash scripts

From here you'll need to use Google more and more to complete the tasks. You can also check out the [main page](../README.md) where we've listed some of the most commonly used commands (Helpful resources section). 

:bulb: Googling is NOT cheating :-)

## 1.1 Files and directories

### 1.1.1 In your terminal

These first tasks are all about getting comfortable in your terminal, and execute some common commands.

:pencil2: List the contents of the directory you are currently standing in

:pencil2: Print the path to the current working directory

:pencil2: List the hidden files (if any) in a directory (hint: in unix, hidden files starts with dot (".ssh"))

:pencil2: List all `txt` files in a the `files` directory with human-readable size references ordered
  by the last-modified date.     

Hint: See the help documentation for the `ls` command's `l`, `t`, `r`, and `h` switches

:pencil2: Find the location of your `git` executable.     

:pencil2: Listen to the tail end of the file `file1.txt` in the `files` folder. Try adding new content to the file.
:question: How do you exit from the live view of the file?

:pencil2: List the contents of your PATH variable

:pencil2: Create a new directory and add this directory to your PATH variable. Verify that it was added by repeating the previous step.

---
### 1.1.2 Create bash scripts

Finally, some scripting! These tasks require you to create bash scripts that you can execute in your shell.

:pencil2: Use a for loop to print out the first few lines of each file in a directory. Try to do this both as a script and as a one-liner in the shell

:pencil2: Make a variable containing the path of a directory or a file that exists in your filesystem.
Make a test that checks whether the path is a directory or a regular file. Print `Directory` if the path is a directory, or `File` if the path is a regular file. Create a script that you can run to check the status of the path currently stored in your variable (e.g. `./filecheck.sh`).

:star: Bonus: Instead of storing the path of the file or folder you want to check, can you pass it inn as a parameter to the script? (E.g. `./filecheck.sh /home/myfolder`).

:star: Bonus: Are you able to use the variable containing the file or directory, printing the path of the file in the output? E.g. `"/home/root/file.txt" is a file`. 

---

### [Go to exercise 2 :arrow_right:](./exercise-2.md)
