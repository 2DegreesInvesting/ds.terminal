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

vim .bash_aliases
alias rm='rm -i'
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

```bash
ls -A

zip -r dotfiles.zip dotfiles
# Upload to rstudio cloud
unzip dotfiles.zip
cd dotfiles
cp . ~

ls -A

bash
```
