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
password: 123 
```

Get the value of relevant environment variables.

```bash
echo $USER
echo $HOME

# Look for the path to $HOME
echo $PATH
```

PATH may include ~/bin if it ~/bin exists.

```bash
cat ~/.profile

mkdir ~/bin

# In a new terminal
# Look for the path to $HOME
echo $PATH

cd ~/bin
```

Write `hi` and run it as a srcipt-file.

```bash
# Look for script-file
bash --help | head

vim hi
echo "Hi $USER"
:wq

bash hi
```

Execute it as a command.

```bash
which bash 

vim hi
#! /usr/bin/bash
echo "Hi $USER"
:wq

# Fails
hi
ls -l hi

# Add [+] e[x]ecution privileges
chmod +x hi

# Compare
ls -l hi

hi
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
sudo apt-get update
logout

login rstudio
sudo apt-get update
sudo apt-get install zsh

# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

