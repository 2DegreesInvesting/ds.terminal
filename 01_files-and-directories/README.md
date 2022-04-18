
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
data](%22https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip%22)
into your Desktop folder.

Or install `docker` and `docker-compose` then run `docker-compose up`.

### Basic shell commands

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

Writing paths:

-   Windows uses  
-   Drag-and-drop to insert a path
-   Press tab to auto-complete a path
-   Repeat previous commands with up/down
-   Search previous commands with ctrl + r
