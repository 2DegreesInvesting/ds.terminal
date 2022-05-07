
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

This chapter is based on two resources:

1.  Appendix A of Happy Git with R – [The
    shell](https://happygitwithr.com/shell.html).

2.  [The Unix shell](https://swcarpentry.github.io/shell-novice/) by
    [The Carpentries](https://carpentries.org/).

Objectives:

-   Understand what is the shell.
-   Start a bash shell.
-   Setup the lesson materials.
-   Navigate your file system.
-   Modify your file system:
    -   Create/copy/move, and remove (!) files/directories.
    -   Edit text files.
    -   Redirect output.
    -   Dotfiles.
    -   Compose commands.
-   Write your own commands with `alias`.

### Use case: Customize and reuse your home

This meetup presents a use case for the skills we’ve covered so far. You
will customize and reuse your home directory.

### Find things

This meetup helps you find text in files and files themselves. It gives
an an overview of the command `grep` and the so called
[findutils](https://www.gnu.org/software/findutils/) – `find`, `locate`,
`updatedb`, and `xargs`. It’s presented in the form of the following use
cases:

1.  Find interesting arguments in a help file.
2.  Prune a directory.
3.  Build a launcher of RStudio projects.

Objectives:

-   Find an argument of `ls` by piping the output of `--help` into
    `grep`.
-   `find` files then delete them by piping the output into `xargs rm`.
-   `find` files then delete them with the action `-delete`.
-   `locate` an RStudio project then launch it with `rstudio`.
-   Create an `alias` to launch any RStudio project quickly.

### Next (tentative)

-   Iterate.
-   Users and privileges.
-   Managing dotfiles.

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
