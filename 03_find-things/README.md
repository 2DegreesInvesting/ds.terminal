### Environment

```bash
docker build -t tmp .
docker run --rm -ti --user rstudio tmp bash
```

### Find patterrns in text files with `grep`

Use grep to learn about some of the most useful arguments of `grep`

```bash
grep --help | head

vim PATTERNS
-i,
-n,
-f,
-v,

grep --help | grep -f PATTERNS
```

### Move all useful RStudio projects to ~/rs

```bash
mkdir ~/rs
find ~ -name "*.Rproj" -not -path "*Trash*" | xargs dirname

# Learn how to handle directories with `mv`
mv --help | head
mv --help | grep -ni "directory"

# Search previous command with `Ctrl + r + "find"`
find ~ -name "*.Rproj" -not -path "*Trash*" | xargs dirname | xargs mv -t rs
```

### List and delete files/directories using more `find` filters (`-user`) and
actions (`-ls`, `-delete`)

Empty Trash.

```bash
# List contents
find ~/Trash -not -name "Trash" -ls

# DANGEROUS!
find ~/Trash -not -name "Trash" -delete
# Similar but uses more resources
find ~/Trash -not -name "Trash" | xargs rm -rf
```

Remove your temporary files

```bash
find /tmp -ls
find /tmp -user rstudio -ls
# Safer: Ask for confirmation
find /tmp -user rstudio -exec rm -ri {} \;
```

### Resources

* `grep --help`.
* [findutils](https://www.gnu.org/software/findutils/): `find`, `locate`,
`updatedb`, `xargs`.

