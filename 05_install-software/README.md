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

