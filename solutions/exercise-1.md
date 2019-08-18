# Solutions - Exercise 1

## 1.1
---
### 1.1.1
*List the contents of the directory you are currently standing in*

This is done using the `ls` command. You can also pass parameters, in order to e.g. get a list with size, last modified date etc with the `-l` parameters. With the `-a` parameter.
```
ls -la
```

*Print the path to the current working directory*

Use the `pwd` command (Print working directory)

*List the hidden files (if any) in a directory (hint: in unix, hidden files starts with dot (".ssh"))*

```bash
ls -a 
# or
ls -la
```

*List all `txt` files in a the `files` directory with human-readable size references (e.g. Megabytes) ordered by the last-modified date*  

```bash
# Lists the files
-ls -l 

# Shows the files with Megabyte size references
--block-size=M

# Sort by last modified date 
-t 

# Complete command
ls -lt --block-size=M

# If you want to reverse the order, add the -r flag
ls -ltr --block-size=M
```

*Find the location of your `git` executable.*

`which git` will show you the location of your git executable.

*Listen to the tail end of the file `file1.txt` in the `files` folder. Try adding new content to the file* 
```
tail -f file1.txt
```
*How do you exit from the live view of the file?* 
Use `ctrl` + `c` to exit.

*List the contents of your PATH variable*
```
echo $PATH
```

*Create a new directory and add this directory to your PATH variable. Verify that it was added by repeating the previous step.*

```
mkdir myfolder
export PATH=$PATH:/path/to/myfolder
echo $PATH
```

---
### 1.1.2

*Use a for loop to print out the first few lines of each file in a directory. Try to do this both as a script and as a one-liner in the shell*

__Script__
```bash
# Multi-line

for filename in ../files/*
do
    head -n 2 $filename
    printf "\n\n"
done

# One-liner

for f in ./files/*; do head -n 2 $f; printf "\n\n"; done
```

*Make a variable containing the path of a directory or a file that exists in your filesystem.
Make a test that checks whether the path exists, and if is a directory or a regular file. Print `Path does not exist` if the file doesn't exist. Print `Path is a directory` if the path is a directory, or `Path is a file` if the path is a regular file. Create a script that you can run to check the status of the path currently stored in your variable (e.g. `./filecheck.sh`).*

```bash
MY_PATH="Insert the path to your file here"

if [[ -e $MY_PATH ]]
then
    if [[ -f $MY_PATH ]]
    then
        echo "Path is a file"
    else
        echo "Path is a directory"
    fi
else
    echo "Path does not exist"
fi
    
```

*Instead of storing the path of the file or folder you want to check, can you pass it inn as a parameter to the script? (E.g. `./filecheck.sh /home/myfolder`).*

```bash
# Check if the parameters were passed. Exit if not.
if [[ $# -ne 1 ]]
then
    echo "Invalid number of parameters. Pass 1 parameter containing the path to a file or directory"
    exit 1
fi

if [[ -e $1 ]]
then
    if [[ -f $1 ]]
    then
        echo "Path is a file"
    else
        echo "Path is a directory"
    fi
else
    echo "Path does not exist"
fi

```
*Are you able to use the variable containing the file or directory, printing the path of the file in the output? E.g. `"/home/root/file.txt" is a file`.* 

```bash

# Check if the parameters were passed. Exit if not.
if [[ $# -ne 1 ]]
then
    echo "Invalid number of parameters. Pass 1 parameter containing the path to a file or directory"
    exit 1
fi

if [[ -e $1 ]]
then
    if [[ -f $1 ]]
    then
        echo "$1 is a file"
    else
        echo "$1 is a directory"
    fi
else
    echo "$1 does not exist"
fi

```