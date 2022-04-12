
The goal of this meetup is to help you understand and use the power of
your terminal.

At the end of this series you will be able to do things like these:

-   navigate to a file/directory
-   create a file/directory
-   compose multiple commands in a single pipeline
-   iterate over files
-   write a single command to do many things at once

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

### Next

Part 1:

-   Navigate your files system with `cd and ls`.
-   Tweak the shell’s prompt with `PS1="\w$ "`.
-   Use `ls` with multiple flags combined, e.g. `ls -lshSF`.
-   Create directories with `mkdir`.
-   Create/copy/move/edit/remove files: `touch`, `cp`, `mv`,
    `echo/vi/nano`, `rm -i`
-   Compose commands, sort, and redirect stdout:
    `wc * -l | sort -n > out.txt`

Part 2:

-   Find things in files: `grep "the" writing/haiku.txt`
-   Find files: `find . -name "*.txt"`

Part 3:

-   Iterate: `find . -name "*.txt" | xargs wc -l`
-   Script: `alias rm="rm -i"`

## Setup

You may get a bash terminal and the lesson data in a number of ways:

-   Follow the lesson’s
    [setup](https://swcarpentry.github.io/shell-novice/setup.html).

-   Use the terminal in [RStudio cloud](https://rstudio.cloud/). You may
    download the lesson data into the Desktop folder in R with:

``` r
# install.packages("usethis")
library(usethis)

use_course(
  url = "https://swcarpentry.github.io/shell-novice/data/shell-lesson-data.zip", 
  destdir = "~/Desktop"
)
```

-   Use the docker image `maurolepore/terminal` (includes the lesson’s
    data) with:

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
