### Understanding users and privileges to create custom commands

This meetup covers an overview of a multi-user system. It helps you understand
users and privileges so you can use your account in a remote server and create
your own commands. It's presented in the form of a use case: Creating a custom
`greetme` program in a remote server.

Objectives:

* Understand that a single may have multiple users.
* Understand the difference between the admin and user accounts.
* Login to a remote server with your user name and password.
* Change your user password with `passwd`.
* Create a file in your home directory, and try it elsewhere.
* Implement `greetme` as echo "Hello ""$USER".
* Attempt to run it in different ways
  - Make it executable with `chmod +x hi`
  - Understand permissions to write, read, and execute by owner, group, and user.
  - Run it as `bash hi` and `./hi`.
  - Understand how to add `greetme` to your `$PATH`.
  - Run it as `greetme`.

### Use case: Create a custom `greetme` command in a shared computer

Features:

* Detects the user name from the enviornment variable `$USER`.
* Prints "Hi <user name>", e.g. "Hi mauro".

### Details

Access a terminal in a multi-user system.

```bash
docker-compose up
```

Orient

```bash
echo $USER
echo $HOME
```

`rstudio` is a super user (sudo) -- can act beyond the limts of /home/rstudio

```bash
# This is usually done by someone in the IT department (not your problem)
adduser mauro
sudo adduser mauro
```

Login as `mauro` and orient

```bash
login mauro
echo $USER
echo $HOME
```

`mauro` isn't a super user.

```bash
adduser will-fail
sudo adduser will-fail
```

`mauro` can work mostly under /home/mauro. 

For example, create a `greetme` command:

```bash
vim greetme
echo "Hi ""$USER"
:wq

bash greetme
```

You can't execute it as a program.

```bash
./greetme
ls -l

# Make it e[x]ecutable
chmod +x greetme

# You can execute it as a progrem but you must know where it lives
./greetme
ls -l
```

It's best to specify that the command must be run by `bash`

```bash
which bash

# Add "shebang"
#! /usr/bin/bash
```

Make it work from anywhere.

```bash
mkdir bin
mv greetme bin

ls
greetme
```

Why this works?

```bash
grep "PATH" ~/.profile
```

As root (admin)

* Write greet as `echo "Hello""$USER"`
* Add execute permission: `chmod +x greet`
* `bash greet`
* `#! env /usr/bin/bash`
* `./greet`
* `export PATH=/new/path/to/command:${PATH}`
* `greet`
* Modify PATH permanently to use your commands, maybe at /home/you/bin

### Symbolic permissions

```
type owner    group user
```
```
-    rwx      rw-   r--
```
```
file read     read  read
     write    write
     execute
```

Reference:

```
u user
g group
o other
a all

+ add
- remove
= set

r read
w write
x execute
```
