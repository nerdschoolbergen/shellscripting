# Exercise 3 - Scripting

You will learn to:

- Create and execute simple bash scripts

## Required software and tools for this exercise

- Bash
- Visual Studio Code

---

### 3.1 - Install required software

:book: We are going to be using [Visual Studio Code](https://code.visualstudio.com/) to create and edit script files.

:pencil2: Install Visual Studio Code by following [these instructions](https://code.visualstudio.com/docs/setup/setup-overview).

### 3.2 - Workspace setup

:book: Before we start, you need to create a temporary folder that will be your workspace for this workshop. Creating a folder inside your user "home" folder is the easiest way.

:pencil2: Open a terminal.

:book: By default, `bash` will set the current working directory to the value of the global enviroment variable `$HOME`, which will vary by OS:

- Linux: `/home/<username>`
- macOS and Windows (Git Bash): `/Users/<username`

:pencil2: To print the current working directory (which should be your home folder), use the `pwd` command.

:pencil2: Create a subfolder of your home directory called `nerdschool-shellscripting` by using the `mkdir` command.

:pencil2: Change the working directory to this folder using the `cd` command. `pwd` should now output `<homefolder>/nerdschool-shellscripting`.

:pencil2: To open this folder as your workspace folder inside VS Code, you can launch VS Code from the command line using the `code .` command.

:exclamation: macOS-users need to follow an one-time [additional VS Code setup step](https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line) to add the `code` command to PATH.

:exclamation: If you receive a warning saying "Do you trust the authors of the files in this folder?", press "Yes, i trust the authors".

The result should be something like this:

<img src="images/ex3_1.png">

## 3.3 - Hello world script

:book: Notice that the left side Explorer pane of VS Code is empty, because the folder you opened is empty. To create a empty file using the command line, use the command `touch <filename>`.

:pencil2: Create a file called `helloworld.sh` using the `touch` command.

:book: In VS Code, notice that you now have a file in the Explorer pane:

<img src="images/ex3.2.png">

:book: You can of course also create files directly inside VS Code.

:pencil2: Update the contents of `helloworld.sh` with the following using VS Code:

```bash
#!/bin/bash
MESSAGE="Hello World!"
echo "$MESSAGE"
```

:exclamation: Remember to save your file.

:book: The first line in the script above is something called a "shebang": `#!/bin/bash`. It sets the target shell to be used when executing the script. The shebang is not strictly required when creating shell scripts, but is a recommended best practice. Omitting it can some times lead to compatibility issues, as some shells have different scripting syntax than others.

:book: The last two lines in the script assigns a value to a local variable and outputs it.

### Executing scripts

:book: To execute a script, use the syntax `./<scriptname.sh>`.

:pencil2: Try executing your `helloworld.sh` script this way.

:book: The command will output an error:

```bash
bash: ./helloworld.sh: Permission denied
```

:book: In order for a script to be executable, you need to set the _file permissons_ for the script file correctly.

### File permissions

:book: In Unix shells, scripts and programs (binaries) are both _files_. To be able to execute a script or a program, the correct file permissions must be set.

:book: File permissions in Unix shells are divided into three settings:

- File owner permissions
- Group owner permissions
- Permissions for other users

:book: Each setting consists of three permissions:

- **R**ead - The permission to read the file
- **W**rite - The permission to write to the file
- E**x**ecute - The permission to execute the file

:book: To see the permission settings for any file, you can use the `ls` command with the option `-l`, which lists files using "long format".

:pencil2: Try displaying the file permissions for `helloworld.sh` by using the `ls -l <filename>` command.

Example output:

```bash
-rw-r--r--  1 user1  users  50 Aug 22 12:53 helloworld.sh
```

:book: This example output tells us the following (read from right to left):

- The filename is `helloworld.sh`
- The file was last edited on Aug 22 at 12:53
- The file is owned by the group `users`
- The file is owned by user `user1`
- The file size is `1` bytes
- `-rw-r--r--` tells us many things:
  - The first character (`-`) is the file type. `-` for files, `d` for directories.
  - The next 9 characters are three sets of three characters, which convey file permissions for owner, group and other users:
    - File owner permissions: `rw-` - The file owner has the right to read and write to the file.
    - Owner group permissions: `r--` - Members of the group `users` have the right to read the file.
    - Other user permissions: `r--` - Everybody else have the right to read the file.

:book: The following diagram explains all the settings:

<img src="images/file_permissions.png" >

:book: Some examples of common settings:

- `rwxrwxrwx` - Every user has the right to do anything.
- `rwx------` - File owner can do anything, nobody else has any rights.
- `rwxr-xr-x` - File owner can do anything, everybody else can read and execute the file. This setting is common for all programs that are used by all users on a computer, for example `bash` itself, or `ls`, `cd`, etc.

### Changing file permissions

:exclamation: Be careful when setting file permissions, as the wrong file permissions on the wrong set of files can lead to unintended access to your system.

:book: We use the `chmod` command to set the permissions of files. To add the execute (`x`) permission to a file for the file owner, you can use the syntax `chmod u+x <filename>`.

:pencil2: Add execute permissions for everyone to the file `helloworld.sh`.

:pencil2: Check that the permissions are correct using the `ls -l` command like we did previously. The correct result should be `rwxr--r--`.

.pencil2: Try executing the script again using the `./ <filename>` syntax.

:book: The script should now output:

```bash
Hello World!
```

### 3.4 - Create bash scripts

:book: These tasks require you to create bash scripts that you can execute in your shell. Remember to set the correct file permissions on each script file you create.

:pencil2: Use a for loop to print out the first few lines of each file in a directory. Try to do this both as a script and as a one-liner in the shell.

:pencil2: Make a variable containing the path of a directory or a file that exists in your filesystem.
Make a test that checks whether the path is a directory or a regular file. Print `Directory` if the path is a directory, or `File` if the path is a regular file. Create a script that you can run to check the status of the path currently stored in your variable (e.g. `./filecheck.sh`).

:star: Bonus: Instead of storing the path of the file or folder you want to check, can you pass it inn as a parameter to the script? (E.g. `./filecheck.sh /home/myfolder`).

:star: Bonus: Are you able to use the variable containing the file or directory, printing the path of the file in the output? E.g. `"/home/root/file.txt" is a file`. 

---

### [Go to exercise 4 :arrow_right:](./exercise-4.md)
