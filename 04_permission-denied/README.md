### Computing environment

Access a terminal in a multi-user system.

```bash
docker-compose up
```

### Use case: Create a custom `hi` command in a shared computer

#### `rstudio` as a user

Login at http://0.0.0.0:8787/

```
username: rstudio
password: s3cr37
```

Get the value of relevant environment variables.

```bash
echo $USER
echo $HOME
echo $PATH
```

Write a shell script-file (similar to an .R script)

```bash
bash --help | head
```

```bash
vim hi
echo "Hi $USER"
:wq

bash hi
```

Specify which program must run the script in the file itself.

```bash
which bash

vim hi
#! /usr/bin/bash
echo "Hi $USER"
:wq
```

Execute it as a program.

```bash
# Fails
./hi
ls -l hi

# Add [+] e[x]ecution privileges
chmod +x hi

# Compare
ls -l hi

# Works but annoying
./hi
/home/rstudio/hi

# Fails
hi
```

Find a suitable location for `hi`.

```bash
# Is the $HOME or the 'rstudio' user in the PATH?
echo $PATH | grep $HOME

# How is the PATH defined?
cat ~/.profile | grep "PATH"

mkdir ~/bin
mv hi ~/bin

# On a new terminal
hi
```

#### `rstudio` as an administrator: Acting on behalf of `root`

`rstudio` is not only a user of the system but also an administrator.

```bash
# Fails because this task is beyond the scope of rstudio as a user
adduser jenny
# Use administrator privileges
sudo adduser jenny
```

Login as `jenny`.

```bash
sudo login jenny
echo $USER
echo $HOME
```

`jenny` is only a user of the system but not an administrator.

```bash
# Fails
adduser hadley
# Fails too
sudo adduser hadley
```

#### Take aways

* Every system including your laptop can be multi-user system.
* Users can act mostly under their home directory.
* Administrators can act anywhere.
* Make a script `abc` executable with `chmod +x abc`. Place it under a directory
in your `$PATH`.

#### Symbolic permissions reference

```
# Who
OwnerGroupAnyone

# Permission
r: Read
w: Write
x: Execute

# Change
+ add
- remove
= set
```
