# Running commands as administrator

### Computing environment

```bash
# git clone 2DegreesInvesting/ds.terminal
# cd ds.terminal
docker-compose up
```

### What are the limits and powers of normal users and administrators?

Only administrators can run commands that affect the entire system.

Let's try to install [oh-my-zsh](https://ohmyz.sh/) -- a tool that enhances the
terminal.

```bash
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

In this and other systems you can install a lot of software with `apt-get`.

```bash
# Fails
apt-get update
apt-get install zsh
```

This can only be done by:

* the administrator user "root"
* "super users" in the group "sudo" acting as "root" with `sudo`.

```bash
whoami
groups

sudo whoami
```

"rstudio" is in the group "sudo", so can use `sudo` to install software.

```bash
sudo apt-get update
sudo apg-get install zsh
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Demo of oh-my-zsh

```bash
# Tell Git who I am
git config --global user.email "maurolepore@gmail.com"
git config --global user.name "Mauro Lepore"

git init abc
cd abc

gcb new

gss
gaa
gcam "Initialize"
glol

~
```

### How do administrators gain their super user powers?

Administrators (users in the group "sudo") can add a users to the system.

```bash
sudo adduser mauro

sudo login mauro
```

By default a new user has no super power.

```bash
groups

# Fails
sudo apt-get update

exit
```

But a super user can add a normal user to the super user group "sudo".

```bash
sudo adduser mauro sudo
sudo login mauro
groups

# Works
sudo apt-get update
```

### Takeaways

* Administrators can use `sudo` to run system-level commands. Normal users can't.
* Administrators can crate new administrators.
* In most servers you can install SOFTWARE with^1:

```bash
sudo apt-get update
sudo apt-get install SOFTWARE
```

^1: Omit `sudo` if you are the "root" user.
