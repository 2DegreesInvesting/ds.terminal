### Use case: Create a `hi` command as a user of a multi-user system

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
* Make a script-file `abc` executable as a command with `chmod +x abc`. 
* Place your customo commands under a directory in your `$PATH`.
