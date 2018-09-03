# Exercise 1 - Using a text editor in the terminal

You will learn to:

- Create files with content in a terminal
- Use a text based editor 
- Set up a configuration file for a text based editor

## 1.1 Getting started

:pencil2: Open `vi` or `vim` from the terminal
  - If you've never seen vim before, doing step 1-9 in [this interactive tutorial](http://www.openvim.com/) is a good place to start. Won't take long!
  - [This vim cheat sheet may be useful](http://vim.rtorr.com/)

:pencil2: Add some text. As you've seen in the interactive tutorial, you should go from normal mode to insert mode by typing `i` before you add text. Enter normal mode again by pressing `Esc`. 

:pencil2: Save the file. In normal mode, you enter commands by typing `:` followed by your command. <br/>
:exclamation: Use google to figure out how to save your work! 

:pencil2: Close `vim`

## 1.2 Configuring vim

Any editor you use regularly should be configured to your liking. There are usually two ways to configure a text based terminal like vim. You can enter configuration commands directly in normal mode, or you can make a file containing the setup. Configuration files should be placed in your home directory and have special names so that the different programs can find them. 

:pencil2: Open vim.

:pencil2: Go into insert mode 

:pencil2: Insert the code below into your text editor

You'll notice the code doesn't look nice anymore, the indentation is most likely off.

:pencil2: Press `Esc` to enter normal mode, then type `u` to undo your paste. 

The code looks bad because vim doesn't understand your entering text in a verbatim manner. You can fix this by configuring vim to paste.

:pencil2: Write `:set paste` in normal mode. 

:pencil2: Try to paste your code snippet again and see that the indentation is correct. 

:pencil2: Save your file as `test.js`. 

```javascript
function code() {
  var theAnswerToLifeTheUniverseAndEverything = 42;
  if (theAnswerToLifeTheUniverseAndEverything) {
    return 'awesome';
  }
}
```

Now you have some js code in a js file, let's get some syntax highlighting. The general syntax for configuration is `:` followed by a command. 

:pencil2: Use Google and find the command for syntax highlighting and see that the code gets coloured. 

If you don't want to type these type of configuration commands every time you open vim, you need a configuration file. Configuration files start with a `.` followed by the program name before ending with `rc`. For vim, the configuration file is `.vimrc`. Let's make a `.vimrc`. 

:pencil2: Find your home directory by typing `cd` in the terminal. This takes you to the directory specified in your `$HOME` environment variable. 

:pencil2: Make your own `.vimrc` file by editing it in `vim`. 

:pencil2: Use Google to find out how to set up there three settings in your `.vimrc`. 
  - Syntax highlighting
  - Convert tabs to spaces
  - Make an alias so that `WQ` and `Wq` behave like the `wq` command (it's very easy to misspell these and any Unix-like system is case sensitive.)
  
### [Go to exercise 2 :arrow_right:](./exercise-2.md)
  
