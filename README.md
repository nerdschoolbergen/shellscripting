# Shell scripting

The CLI (Command-line interface) is a developer's friend and power tool. Learn some of the most
important commands and see how the CLI can supercharge your workday.

You'll learn some basic bash programming and produce a simple deployment script for a remote location.

This repository contains a link to a Google Presentation with a quick introduction to the CLI,
some tips on useful tools and exercises. Happy hacking!

## [Open presentation slides](https://drive.google.com/drive/folders/1ky-GiCj6xeeLMK0ZUJCEoMrc191q8FE9?usp=sharing)

## What you need

You'll the Bash shell:

* Linux/MacOS: Bash is already included
* Windows: Install [Git for Windows](https://git-scm.com/download/win) - Remember to opt in for Git Bash when installing

## How to get started

* Start by cloning this repository into a folder on your computer. If you've never used git before, you can alternatively use the the green "Code" button to the top right, and then select "Download zip". Unzip the downloaded zip file (make sure to remember where you put it).  
* Although you have this `README.md` file on your computer, it's easier to read it on GitHub with formatting. We therefore recommend you keep a web browser tab open with the exercise tasks.
* Start by opening [exercise 1](./exercises/exercise-1.md/).
* Remember to ask an instructor if you're stuck.

> :exclamation: Hottest tip: Google is your friend. You will need to google alot as you dive into the exercises!

## Exercises

- [Exercise 1](./exercises/exercise-1.md/) - Getting started
- [Exercise 2](./exercises/exercise-2.md/) - Basics of the shell
- [Exercise 3](./exercises/exercise-3.md/) - Number guessing game

### Bonus exercises

- [Bonus part 1](./exercises/bonus-1.md)

## Helpful resources

- [Shell scripting](#shell-scripting)
  - [Open presentation slides](#open-presentation-slides)
  - [What you need](#what-you-need)
  - [How to get started](#how-to-get-started)
  - [Exercises](#exercises)
    - [Bonus exercises](#bonus-exercises)
  - [Helpful resources](#helpful-resources)
  - [1. Navigation](#1-navigation)
  - [2. Getting an overview](#2-getting-an-overview)
  - [3. Files and directories](#3-files-and-directories)
  - [4. Editing](#4-editing)
  - [5. Scripting basics](#5-scripting-basics)
  - [6. Remote access](#6-remote-access)
  - [7. How do I get help?](#7-how-do-i-get-help)
  - [8. Nice to know about systems](#8-nice-to-know-about-systems)
  - [9. Scripting](#9-scripting)

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
- `grep` : search for a given expression

## 3. Files and directories
- `mkdir` : make a directory ("make dir")
- `cp` : copy a file or directory ("copy")
- `mv` : move a file or directory ("move")
- `rm` : delete a file or directory ("remove")
- `chmod` : change file permissions ("change mode")
- `touch` : change last-modified timestamp of a file without editing it

## 4. Editing
- `vim`/ `vi` : CLI text editor with command mode and insert mode
- `sed` : regular expressions (change occurences of patterns)
- `awk` : editing columns of text or numbers (pronounced "auk")

## 5. Scripting basics
- `echo` : print to screen (think `System.out.println`)
- `|` : send the output (pipe the output) to the next command
- `>` and `<` : redirecting input and output streams
- `for` 
- `if`
- variables

## 6. Remote access
- `ssh` : securely log in to a remote box
- `scp` : send files from one box to another with ssh 
- `rsync` : synchronise files locally or remote
- `wget` : gets files over http
- `curl` : gets files over http 

## 7. How do I get help? 
- Google is, as always, your friend
- `man <command>` 

## 8. Nice to know about systems
- `PATH` : Your OS will search for executables in these locations (such as `java`, `python` and anything you might install yourself)
- environment variables
- dot-files : hidden files , e.g. `.bashrc`
- `sudo` : perform tasks as super user (with great power comes great responsibility)

## 9. Scripting
- `#!` (shebang)
- file permissions and file ownership
- `ssh`
- combining commands
- `find` and `grep` 
- `grep, `sed`, `awk`
- for loops

