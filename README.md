# Shell scripting

The CLI (Command-line interface) is a developer's friend and power tool. Learn some of the most
important commands and see how the CLI can supercharge your workday.

You'll learn some basic bash programming and produce a simple deployment script for a remote location.

This repository contains a link to a Google Presentation with a quick introduction to the CLI,
some tips on useful tools and exercises. Happy hacking!

## [Open presentation slides](https://docs.google.com/presentation/d/1XWCWgZ-a7r9EyyZvL_DoszoonElg-fDQKQQsqAwWqbg/)

## What you need

You'll only need the Bash shell:

* Linux/MacOS: Bash is already included
* Windows: Install [Git for Windows](https://git-scm.com/download/win) - Remember to opt in for Git Bash when installing

## How to get started

* Start by cloning this repository into a folder on your computer. If you've never used git before, you can alternatively use the the green "Code" button to the top right, and then select "Download zip". Unzip the downloaded zip file (make sure to remember where you put it).  
* Although you have this `README.md` file on your computer, it's easier to read it on GitHub with formatting. We therefore recommend you keep a web browser tab open with the exercise tasks.
* Start by opening [exercise 1](./exercises/exercise-1.md/).
* Remember to ask an instructor if you're stuck.

> :exclamation: Hottest tip: Google is your friend. You will need to google a lot as you dive into the exercises!

## Exercises

- [Exercise 1](./exercises/exercise-1.md/) - Getting started
- [Exercise 2](./exercises/exercise-2.md/) - Basics of the shell
- [Exercise 2](./exercises/exercise-3.md/) - Scripting
- [Exercise 4](./exercises/exercise-4.md/) - Using pipelines and redirects
- [Exercise 5](./exercises/exercise-5.md/) - Number guessing game


## Helpful resources

- [Shell scripting](#shell-scripting)
  - [Open presentation slides](#open-presentation-slides)
  - [What you need](#what-you-need)
  - [How to get started](#how-to-get-started)
  - [Exercises](#exercises)
  - [Helpful resources](#helpful-resources)
  - [1. Navigation](#1-navigation)
  - [2. Getting an overview](#2-getting-an-overview)
  - [3. Files and directories](#3-files-and-directories)
  - [4. Scripting basics](#4-scripting-basics)
  - [5. How do I get help?](#5-how-do-i-get-help)

## 1. Navigation
- `ls`: what's in this directory? ("list")
- `pwd` : where am I standing in the file system? ("print working directory")
- `cd` : take me to indicated directory ("change directory")
- `find` : find a file from given directory in the file tree

## 2. Getting an overview

- `history` : show me the commands I've run
- `tail`  : read me the last lines of a file
- `head` : read me the first lines of a file
- `less` : non-editable view of a file
- `cat` : list contents of a file to standard out
- `grep` : search for a string of characters in a file using given regular expression

## 3. Files and directories

- `mkdir` : make a directory ("make dir")
- `cp` : copy a file or directory ("copy")
- `mv` : move a file or directory ("move")
- `rm` : delete a file or directory ("remove")
- `chmod` : change file permissions ("change mode")
- `touch` : change last-modified timestamp of a file without editing it

## 4. Scripting basics

- `echo` : print to screen (think `System.out.println`)
- `|` : send the output (pipe the output) to the next command
- `>` and `<` : redirecting input and output streams
- `for`
- `if`
- variables

## 5. How do I get help? 

- Google is, as always, your friend
- `man <command>` 
