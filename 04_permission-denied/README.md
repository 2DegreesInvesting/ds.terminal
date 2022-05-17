### Use case: Create a custom `hi` command in a shared computer

Computing environment

```bash
docker-compose up
```

#### `rstudio` as a user

Login

```
# http://0.0.0.0:8787/
username: rstudio
password: s3cr37
```

Get the value of relevant environment variables.

```bash
echo $USER
echo $HOME
echo $PATH
```

Write a script-file to run with `bash`.

```bash
bash --help | head
```

```bash
vim hi
echo "Hi $USER"
:wq

bash hi
```

Execute it as a program.

```bash
# Specify which program must run the script in the file itself.
which bash

vim hi
#! /usr/bin/bash
echo "Hi $USER"
:wq

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

Place `hi` under a directory in your `$PATH`.

```bash
# Is the $HOME or the user "rstudio" in your $PATH?
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
# Fails. This is beyond the scope of rstudio as a user
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

# Fails
sudo login rstudio

# Works
exit
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
