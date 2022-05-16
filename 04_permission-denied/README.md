### Computing environment

Access a terminal in a multi-user system.

```bash
docker-compose up
```

### Use case: Create a custom `hi` command in a shared computer

Login

```
username: rstudio
password: $3cr37
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
```

Specify which progam must run the script in the file itself.

```bash
which bash

vim hi
#! /usr/bin/bash
echo "Hi $USER"
:wq
```

Execute it as a program.

```bash
./hi
ls -l

# Add [+] e[x]ecution privileges
chmod +x hi
# Compare
ls -l

# Works but annoying
./hi
~/hi

# Fails
hi
```

Find a suitable location for `hi`.

```bash
echo $PATH | grep $USER
cat ~/.bashrc | grep "PATH"
cat ~/.profile | grep "PATH"

mkdir ~/bin
mv hi ~/bin

hi
```

`rstudio` is not only a user but also an administrator of the system.

```bash
# Fails because this task is beyond the scope of rstudio as a user
adduser jenny
# Use administrator privileges
sudo adduser jenny
```

Login as `jenny`.

`jenny` is only a user, not an administrator.

```bash
# Fails
adduser hadley
# Fails too
sudo adduser hadley
```

`jenny` can run `hi` because anyone can.

```bash
hi
which hi
ls -l /home/rstudio/bin/hi
```

### Symbolic permissions reference

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
