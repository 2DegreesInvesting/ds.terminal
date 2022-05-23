#### Running commands as administrator. Use case: Install [oh-my-zsh](https://ohmyz.sh/)

Only administrators can run commands that affect the entire system.

Let's try to install a tool that enhances the terminal.

```bash
# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

In this and other systems you can install a lot of software with `apt-get`.

```bash
# Fails
apt-get update 
apg-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

This can only be done by the administrator user "root", or "super users" in the
group "sudo" who can act on behalf of "root" via the command `sudo`.

```bash
whoami
groups

sudo whoami
```

"rstudio" is in the group "sudo", so can use `sudo` to install software.

```bash
sudo apt-get update
sudo apt-get install zsh

# https://ohmyz.sh/#install
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

Demo of oh-my-zsh

```bash
git init abc
cd abc
alias | grep "branch"
gcb new

alias | head
~
```

Users in the group "sudo" can add users to the system.

```bash
sudo adduser mauro

sudo login mauro

groups

# Fails
sudo apt-get update

exit
```

Users in the group "sudo" can add users to the group "sudo".

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
