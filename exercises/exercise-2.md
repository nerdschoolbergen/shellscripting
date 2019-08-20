# Exercise 2 - Deploy via a script 

:book: In this exercise you will write a script that will upload a set of files, containing a simple website to an existing server we have set up.

You will learn to:
  - Create your own script with functionality
 
## 2.1 Create your script
### 2.1.1 Copying and verifying files

:exclamation: Feel free to ask for help if you are stuck or something is unclear. Also, google is your friend :-)

:pencil2: Create a script that executes with `./script.sh` rather than `bash script.sh`. Make sure you're in the same directory as your script is in.
Test this by executing the script from other directories and print the current working directory before and after the command.

:pencil2: Move the `website` folder in the root of this git-repository in to your working directory, where you will be creating the script.
  
__Your script should execute the following steps in order to deploy a single website to a server__

:pencil2: Upload all the files using a secure copying method (login information and address will be listed in the presentation) to a folder with your name on the server (See `REMOTE_FOLDER` in the template below).
  
:pencil2: SSH into the server and verify that the files are there (It might be enough to check if the `index.html` file is present).

:pencil2: Print out some log messages after each step in your script.

:book: Here is a template to get your started:

```bash
#!/bin/bash
# - The above line is called "the shebang", and tells the shell what program to interpret the script with, when executed.
# - Make sure to set permissions so that your user can execute the file (chmod u+x)

# This is a magic oneliner that moves you to the dir of the script file:
cd "$( dirname "${BASH_SOURCE[0]}" )"

# Change the NAME variable to your name.
NAME="YourName"
REMOTE_FOLDER="/var/www/$NAME/"

# " evaulates the contents
# ' does not evaluate the contents inbetween. Test with 
# param=hey
# echo "$param"
# echo '$param'

# 1. Securely upload the folder to the remote remote server (to the REMOTE_FOLDER location)
# 2. Securely login to the remote remote and verify that the index.html file is present in your REMOTE_FOLDER
```



### 2.1.2 Save backups

If you run the script several times, you will try to copy files to an existing location. What we can do to fix this, is to create a mechanism for backing up the old files before deploying the new files. 

:pencil2: Before you copy the files to the server, move the existing files on the server to the `/var/backup/<YourName>` folder, and give it a descriptive name (e.g. containing the date and time of the backup).

You might end up with something like this `/var/backup/Marius/backup_

When you upload the folder with your HTML-files, create a copy of the folder to the `/var/releases` folder, and give it a descriptive name (such as a name containing the date and the release number - E.g. `release-081819-1`, with end result: `/var/releases/<yourname>/release-081819-1`). You now have a set of previously released artifacts on the server.


## :star: Bonus tasks for this exercise (optional)
If you enjoyed working with this exercise, there is a lot more you can add to the script. Here are some suggestions, but you can add any feature you like (**Show us if you do something cool**).


## 2.2.1 Cloning a git repository 
Add an extra step to your deploy pipeline, where you start by cloning a remote git repository and use that as the website to upload to the server. If you are familiar with javascript build tools, try pulling a javascript webapp, build it, and upload it.

### 2.2.2 `getopts`

:book: Try to make your deploy-script use parameters with `getopts`! 
- the parameters and their uses are: 
  - `-c` Enables the steps to SSH into the server to check that the files are present
  - `-s` Turns off any logging/printing to the console
  - `-h` display usage
- When you run the script it should look like this (when you invoke all the steps): 
`./myscript.sh -cs`


### 2.2.3 Zipping
Zip the folder with your HTML-files before uploading them to the server. Unzip them on the server.

:bulb: If you are working from a Macbook or a Linux machine, check out the `zip` utility. If you are working from a windows machine. If you are on windows, the simplest solution might be to download 7Zip, and use the `7z`-command. 

---

### [Go to exercise 3 :arrow_right:](./exercise-3.md)
