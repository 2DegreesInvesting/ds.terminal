
The goal of this meetup is to help you understand and use the power of
your terminal.

At the end of this series you will be able to do things like these:

-   Navigate your file system.
-   Modify your file system.
-   Perform complex actions by composing multiple simple commands.
-   Find files, and find patterns inside files.
-   Do one thing over multiple files.
-   Create your own commands to do many things at once.
-   Customize your terminal to make it nicer and safer.

## Who is the audience?

Anyone who wants to understand the basics of the terminal, including
developers and analysts at 2DII and beyond.

## Why is this important?

> The Unix shell has been around longer than most of its users have been
> alive. It has survived so long because it’s a powerful tool that
> allows people to do complex things with just a few keystrokes. More
> importantly, it helps them combine existing programs in new ways and
> automate repetitive tasks so they aren’t typing the same things over
> and over again. Use of the shell is fundamental to using a wide range
> of other powerful tools and computing resources.

– <https://swcarpentry.github.io/shell-novice/>

## Syllabus

### Overview

This meetup helps you understand what is the terminal, and why you might
want to use it. It overviews the entire series.

### Part 1

This chapter is based on Appendix A of Happy Git with R: [The
shell](https://happygitwithr.com/shell.html).

Objectives:

-   Understand what is the shell.

-   Start a bash shell.

-   Setup the lesson materials.

-   Navigate your file system.

-   Modify your file system: Create/copy/move, and remove (!)
    files/directories.

-   Compose commands, sort, and redirect results.

-   Edit text files.

### Next

Part 2:

-   Find things in files: `grep "the" writing/haiku.txt`
-   Find files: `find . -name "*.txt"`

Part 3:

-   Iterate: `find . -name "*.txt" | xargs wc -l`
-   Script: `alias rm="rm -i"`

## Setup

-   Option 1: You can get a bash terminal following Appendix A of Happy
    Git with R: [The shell](https://happygitwithr.com/shell.html#shell).
    Then download the [example
    data](%22https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip%22)
    into your Desktop/ folder, e.g. in R with:

``` r
# install.packages("usethis")

url <- "https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip"
usethis::use_course(url, destdir = "~/Desktop")
```

-   Option 2: Use the docker image `maurolepore/terminal` including the
    example data with:

``` bash
docker run --rm -ti maurolepore/terminal
```

## Resources

-   YouTube [playlist](https://bit.ly/ds-incubator-videos).
-   The
    [ds-incubator](https://github.com/2DegreesInvesting/ds-incubator#ds-incubator)
    project.
-   [Ideas](https://bit.ly/dsi-ideas) for future meetups.
-   [The Unix shell](https://swcarpentry.github.io/shell-novice/) by
    [The Carpentries](https://carpentries.org/).
-   Materials
    ([ds.terminal/releases](https://github.com/2DegreesInvesting/ds.terminal/releases)).
