# Navigate
pwd
cd
ls 

# Get help
cmd --help or man cmd

# Modify
Create/copy/move, and remove (!) files/directories.
mkdir
cp
mv
rm -i

# Customize: Dotfiles, redirect output, write your own commands
echo "alias rm='rm -i'" > ~/.bash_aliases
vim ~/.bash_aliases
alias R='R --no-save --no-restore-data'

# Edit text files, quit vim
vim ~/.bashrc
PS1="\w$ "

# Install software
sudo apt-get update && sudo apt-get install nano

# Compose commands

# Basics of finding things and iterating

- grep
- xargs (https://www.gnu.org/software/findutils/)

# Focused on developers

- Installing software

- Finding things
  - findutils: https://www.gnu.org/software/findutils/
  - j

- Create you own commands
  - aliases for Rscript
  - in files with `#!/usr/bin/env bash`
- PATH
- User privileges
- Links
- Installing software

Use case create terminal commands to run Rscript
Use case manage your own ~/bin
Use case manage dotfiles
Use case work with a server

