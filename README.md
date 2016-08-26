# Shell scripting
<img src="http://haacked.com/images/icons/Shell.ico" width="128" />

The CLI (Command-line interface) is a developer's friend and power tool. Learn some of the most
important commands and see how the CLI can supercharge your workday.

The goal is to produce a simple deployment script. 

This repository contains a link to some slides with a quick introduction to the CLI,
files with some tips on useful tools and the assignment itself. Happy hacking!

# Assignment

See [assignment.md](assignment.md)

# Tips

You'll need something that gives you a bash-like shell. If you're using a *nix system or OS X you'll be fine, if you're using Windows you can install one of the following:
- Git for Windows: http://git-scm.com/downloads - Remember to opt in for Git Bash when installing)
- Cygwin: https://www.cygwin.com/
- Gow: https://github.com/bmatzelle/gow - More lightweight than Cygwin

Some useful tools and a short intro to what they do: 
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

