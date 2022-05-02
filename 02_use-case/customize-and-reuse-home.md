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
cd dotfiles
git init
git add .
git commit -m "Add basic dotfiles"
```

### Reuse dotfiles

Test

```bash
alias
git clone git@github.com:2DegreesInvesting/ds.terminal.git
```

Reuse dotfiles

```bash
ls -A

zip -r dotfiles.zip dotfiles
# Upload
unzip dotfiles.zip
cd dotfiles
cp . ~

ls -A

bash
```

Reuse secret ssh keys

```bash
# WARNING! This is secret information
zip -r ssh.zip ~/.ssh
# Upload
unzip ssh.zip
mv .ssh ~
```

Refresh and test

```bash
alias
git clone git@github.com:2DegreesInvesting/ds.terminal.git
```
