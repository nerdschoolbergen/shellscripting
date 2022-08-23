# Exercise 2 - Basics of the shell

You will learn to:

- Understand how the command line works
- Navigate through files and directories using a shell

:book: Check out the [main page](../README.md) where we've listed some of the most commonly used commands (Helpful resources section).

---

## 2.1 - The command prompt

:book: When you start a shell, a prompt appears on the screen where the user can type text input. This prompt is also called a _command line_ or _commmand prompt_. On most systems the prompt has a `$` to denote where the command prompt is on the screen:

```bash
$
```

:book: Pressing <kbd>Enter</kbd> will tell the shell to execute the input. If the input generates some output, it's displayed under the command line:

```bash
$ ls
<output is displayed here>
```

## 2.2 - Commands and programs

:book: On Unix-like operating systems (like Linux and macOS) the commands you can execute using the shell (like `ls`, `mkdir`, `cd`, etc.) are small programs, not a part of the shell itself. What commands are available depends on the OS and what the user has installed.

:book: To make things easier, Unix-like OS-es come with a standard set of programs or commands called [POSIX](https://itsfoss.com/posix/) commands. These commands are located in a [standard set of folders](https://en.wikipedia.org/wiki/Filesystem_Hierarchy_Standard):

- `/bin` - Essential commands like `ls`, `cp`, `rm`, in addition to shell programs like `bash`.
- `/usr/bin` - Non-essential commands like `find`, `grep`, `head`, `tail`.

:exclamation: __macOS Catalina users__: The default shell in macOS Catalina is set to `zsh`. This means that after you open Terminal, you will need to start bash by typing `bash` and then pressing <kbd>Enter</kbd>. Alternatively, you can set the default shell to `bash` by following [this guide](https://www.howtogeek.com/444596/how-to-change-the-default-shell-to-bash-in-macos-catalina/).

:pencil2: Start by opening your terminal application.

:pencil2: Try listing the contents of these folders using the `ls <foldername>` command to get a list of commands.

:book: In addition to the folders above, there are standard folders for system-level commands (that perform tasks like formatting disks and configuring the OS):

- `/sbin` - Essential system commands like `ping`, `shutdown`, `mount`.
- `/usr/sbin` - Non-essential system commands like `chmod`, `tcpdump` and `netstat`.

:book: 

:book: The shell in it self is also a command, like other commands :)

:pencil2: Try starting a new shell process by typing `bash` and then pressing <kbd>Enter</kbd>:

```bash
$ bash
...
$
```

:book: Note that the result is a new command prompt for a new shell. This new shell is a child process of the first shell. To exit the child shell process and return to the first shell, use the `exit` command:

```bash
$ exit
exit
$
```

### 2.2.1 - General syntax for commands

:book: All commands in Unix-like systems follow a basic syntax:

- `<command>`
- `<command> <argument>`
- `<command> -<parameter>`
- `<command> -<parameter> <argument>`

An example:

`cp -R dir1/ dir2/` - copy all files and subdirectories from `dir1` into `dir2`

- `cp` is the command
- `-R` is a parameter - in the context of `ls` it means copy recursively (copy all files and subfolders).
- `folder1/` is a argument - In the context of `ls` it's the source directory
- `folder2/` is a argument - In the context of `ls` it's the target folder

Parameters are always prefixed with a `-` (sometimes they have an alternative "long" human-readable form style syntax with a `--` prefix, like `--count` instead of `-c`).

What parameters and arguments a command takes, and if they are mandatory or not depends on the command.

:pencil2: The `ls` command has a parameter called `-l`, which lists files and directories with a "long form" output. Try using this parameter to list out the contents of a directory.

## 2.2 - Files and directories

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

## 2.3 - Basic shell navigation

## 2.4 - Signals

---

## Summary

In this exercise, we used some of the basic commands using our terminal and the bash shell. These are commonly used commands that we need to navigate and view the files of our system.Using a shell, you have the ability to automate your workflows by either creating useful scripts or gluing together different scripts and program in your system for maximum efficiency. In the next exercise, we will look into some of the things that make the shell effective - scripting.

### [Go to exercise 3 :arrow_right:](./exercise-3.md)
