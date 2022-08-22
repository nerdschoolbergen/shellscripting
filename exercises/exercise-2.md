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

## 2.2 - Programs



## 2.2 - Files and directories

:pencil2: Start by opening your terminal application.

:exclamation: __macOS Catalina users__: The default shell in macOS Catalina is set to `zsh`. This means that after you open Terminal, you will need to start bash by typing `bash` and then pressing <kbd>Enter</kbd>. Alternatively, you can set the default shell to `bash` by following [this guide](https://www.howtogeek.com/444596/how-to-change-the-default-shell-to-bash-in-macos-catalina/).

### 2.1.1 - In your terminal

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

## Summary

In this exercise, we used some of the basic commands using our terminal and the bash shell. These are commonly used commands that we need to navigate and view the files of our system.Using a shell, you have the ability to automate your workflows by either creating useful scripts or gluing together different scripts and program in your system for maximum efficiency. In the next exercise, we will look into some of the things that make the shell effective - scripting.

### [Go to exercise 3 :arrow_right:](./exercise-3.md)
