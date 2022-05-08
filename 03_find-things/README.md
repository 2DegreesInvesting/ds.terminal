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
i,
n,
f,
v,

grep --help | grep -f PATTERNS
```

### Move all useful RStudio projects to ~/rs

```bash
# Command [directory] [filters] [action]
find
find ~
find ~ -name "*.Rproj"
find ~ -name "*.Rproj" -not -path "*Trash*"
find ~ -name "*.Rproj" -not -path "*Trash*" -print
find ~ -name "*.Rproj" -not -path "*Trash*" -ls

find ~ -name "*.Rproj" -not -path "*Trash*" | xargs dirname
find ~ -name "*.Rproj" -not -path "*Trash*" | xargs dirname | xargs mv -t rs
```

### List and delete files/directories using the `find` actions `-delete` and `-exec`.

Empty Trash.

```bash
# List contents
find Trash -not -name "Trash" -ls

# DANGEROUS!
find Trash -not -name "Trash" -delete

mkdir Trash/a
touch Trash/a/b.c

# Similar but uses more resources
find Trash -not -name "Trash" | xargs rm

mkdir Trash/a
touch Trash/a/b.c

# Similar but safer because `-i` asks you to confirm
find Trash -not -name "Trash" -exec rm -i {} \;
```

### Resources

* `grep --help`.
* [findutils](https://www.gnu.org/software/findutils/): `find`, `locate`,
`updatedb`, `xargs`.

