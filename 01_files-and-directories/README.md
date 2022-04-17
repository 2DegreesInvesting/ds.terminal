
# Part 1

### Setup

-   Overview different ways to
    [setup](https://github.com/2DegreesInvesting/ds.terminal#setup) a
    terminal and data.

### What is the terminal and why use it?

-   It’s one way to interact with a computer.
-   They scale up much better than GUIs.
-   It a common way to interact with cloud computing systems.

### Look and move around

``` bash
# Print working directory
pwd

# List files and directories under the current working directory
ls

# Modify the output with flags. You may combine multiple flags
ls --all
ls -a

ls -al
ls -alt
ls -altr
ls -altrF

ls --help
```

Change to your home directory and explore it. This helps:

-   Use autocomplete with Tab.
-   Clear the terminal with clear (or ctrl + L).
-   Reuse commands with Up/Down.

``` bash
cd ~
```

-   Explore lesson’s data under \~/Desktop recursively.

``` bash
ls -R
```

Explore the directories `.` and `..`.

``` bash
ls -a
ls .
ls ..
```

Explore one linking/linked directory.

``` bash
ls -l
ls R
ls /cloud/lib
```

These three commands return the same. Which one is wold you say is:

-   default?
-   relative?
-   special?
-   absolute?

``` bash
ls
ls .
ls ~
ls /home/rstudio-user
```

These two commands return something different expect at `/`. Why?

``` bash
ls .
ls ..

cd /
ls .
ls ..
```