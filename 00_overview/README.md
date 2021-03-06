
# Overview

This meetup helps you understand what is the terminal, and why you might
want to use it. It overviews the entire series.

### Part 1:

Navigate your files system:

-   Explore the lesson materials north-pacific-gyre/ with `ls` and `cd`.

Customize your shell:

-   Tweak the shell’s prompt.

Compose flags:

-   Use a command with multiple flags combined: `ls -lr`.

Modify your file system:

-   Create directories.
-   Create, copy, move, edit, and remove files (DANGER!).

Compose commands, sort, and redirect results:

``` bash
wc * -l | sort -n > result.txt
```

### Part 2:

-   Find things in files with `grep`

``` bash
grep "the" writing/haiku.txt
```

-   Find files with `find`

``` bash
find . -name "*.txt"
```

### Part 3:

-   Iterate with `xargs` (or do it in a higher-level language)

``` bash
find . -name "*.txt" | xargs wc -l
```

-   Script with `alias` (or do it in a higher-level language)

``` bash
alias rm="rm -i"
```
