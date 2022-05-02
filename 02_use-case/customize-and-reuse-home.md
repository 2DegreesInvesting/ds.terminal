# Use case: Customize and reuse your home

### Navigate and look around

```bash
pwd
cd ~

# Get help
ls --help

# Show hidden files and directories
ls -AF
```

### Customize my system

Git

```bash
# Tell Git who I am
git config --gloal user.name "Mauro Lepore"
git config --global user.email "maurolepore@gmail.com"

ls -A

cat .gitconfig
```

Aliases

```bash
alias
less .bashrc

echo "alias rm='rm -i'" >> .bash_aliases
vim .bash_aliases
alias R='R --no-save --no-restore-data'
```

### Save dotfiles

```bash
mkdir dotfiles
cp .gitconfig .bashrc .bash_aliases .profile dotfiles

zip -r dotfiles.zip dotfiles
```

### Reuse dotfiles

Nothing yet.

```bash
ls -A
alias
```

Reuse dotfiles


```bash
unzip dotfiles.zip
cd dotfiles
cp -r . ~

cd ~
ls -A
```

Restart.

```bash
alias
```
