# Solutions - Exercise 3

---
### 3.4 - Create bash scripts

*Use a for loop to print out the first few lines of each file in a directory. Try to do this both as a script and as a one-liner in the shell*

__Script__

Multi-line:

```bash
#!/bin/bash

for filename in ./*
do
    head -n 2 "$filename"
    printf "\n\n"
done
```

One-liner:

```bash
for f in ./*; do head -n 2 "$f"; printf "\n\n"; done
```

---

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

*Instead of storing the path of the file or folder you want to check, can you pass it in as a parameter to the script? (E.g. `./filecheck.sh /home/myfolder`).*

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
