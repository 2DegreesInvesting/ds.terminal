
# Part 1

### [What is the shell?](https://happygitwithr.com/shell.html#what-is-the-shell)

-   A program … to run other programs.
-   It is very fast, concise, and ubiquitous.
-   The most common shell is `bash`.
-   Pseudo-synonyms: terminal, command line, and console.

### [Starting the shell](https://happygitwithr.com/shell.html#starting-the-shell)

-   Within Rstudio:

    -   Tools &gt; Shell …
    -   Tools &gt; Terminal

-   Check terminal in RStudio:

    -   Tools &gt; Global options &gt; Terminal (bash)
    -   `echo $SHELL`

-   Outside Rstudio:

    -   MacOS: Start “Terminal”.
    -   Windows: [Install
        Git](https://happygitwithr.com/install-git.html), then start
        “Git Bash”.

### Setup

Start a terminal and download the [example
data](https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip)
into your Desktop folder.

Or install `docker` and `docker-compose` then run `docker-compose up`.

### Navigate your file system

``` bash
pwd

ls
ls --help
ls -a
ls -alt

cd Desktop/shell-lesson-data
cd ..
cd -
cd ~
```

### Writing paths

-   Windows uses  
-   Drag-and-drop to insert a path
-   Press tab to auto-complete a path
-   Repeat previous commands with up/down
-   Search previous commands with ctrl + r `*`

`*` Explain why this failed before.

### Modify your file system

#### Create directories

``` bash
cd ~
ls -F

# Use `mkdir` to create one or more directories
mkdir folder1
mkdir folder2 folder3
ls -F

# Use the flag `-p` (or `--parents`) to also create parent directories
# Fails
mkdir folder1/a/b/c folder1/d/e/f
# Works
mkdir -p folder1/a/b/c folder1/d/e/f
ls -FR
```

### Create and edit text files

-   `echo` + `>` or `>>`: Available everywhere. Limited. Easy to use.

``` bash
# Create a.txt with the content "a b c"
echo "abc" > a.txt
cat a.txt

# Replace the contents of a.txt
echo "d e f" > a.txt
cat a.txt

# Append the contents of a.txt with "g h i"
echo "g h i" >> a.txt
```

-   `vim some.file`: Available almost everywhere. Powerful. Not
    intuitive.

``` bash
# Edit a file a.txt. Create it if it doesn't exist.
vim a.txt

# Change to insert mode:
i

# Type to insert text

# Change to command mode
Esc

# Save
:w

# Save then quit
:wq

# Quit without saving
:q!
```

-   `nano a.txt`: Available sometimes. Moderately powerful/easy-to-use.

``` bash
# Install nano
sudo apt-get update
sudo apt-get install nano

# Edit a.txt. Create it if it doesn't exist
nano a.txt

# Type to insert text

# Follow the instructions to do anything else, e.g. save and close with:
Ctrl (^) + X
Y
Enter
```

### Copy and move files and directories

-   Copy and move files

``` bash
cd ~/projects/ds.terminal

# Copy key configuration files from home to here
cp ~/.bashrc .
# Same, redirecting the standard output to the file .profile
cat ~/.profile > .profile
# List hidden files only
ls -Ad .*

# Create a dedicated directory and move both files at once into it
mkdir config
mv .bashrc .profile config
ls -Ad .*
ls -Ad config/.*
```

``` bash
cp -r config dotfiles
ls -A dotfiles
```

### Remove files and directories

Let’s clean up.

``` bash
# Don't use `rm` alone. Use it with `-i`.
rm -i config/.bashrc

# With -r it works recursively for non-empty directories 
rm -ir config
```

### Writing your own commands

You may overwrite `rm` with `rm -i` with an `alias`:

``` bash
# For the current terminal session
alias rm='rm -i'

# Permanently
echo "alias rm='rm -i'" >> ~/.bash_aliases
alias | tail -1
```

### Takeaways

-   See the options for any command with `cmd --help` or `man cmd`.
-   Get out of a `vim` editor with `:q!`.
-   `rm` is dangerous: You can’t “undo” it (unless you use Git). Safer
    is `rm -i`.
-   Write your own commands with `alias`, and store them in
    \~/.bash\_aliases.
