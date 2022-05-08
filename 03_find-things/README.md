### Find an argument of `mv` to specify the directory first

```bash
mv --help | cat -n | grep -i "directory"
```

### Move all useful RStudio projects to ~/rs

```bash
mkdir ~/rs
find ~ -name "*.Rproj" -not -path "*Trash*" | xargs dirname | xargs mv -t rs
```

### Delete files

```bash
# Dangerous
find ~/Trash -not -name "Trash" | xargs rm -rf
# Dangerous
find ~/Trash -not -name "Trash" -delete
```

```bash
# Safer
find /tmp -user rstudio -ls
find /tmp -user rstudio -exec rm -ri {} \;
```

### Resources

* [findutils](https://www.gnu.org/software/findutils/): `find`, `locate`,
`updatedb`, `xargs`.

