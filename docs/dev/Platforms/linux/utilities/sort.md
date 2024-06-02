# [SORT](https://man7.org/linux/man-pages/man1/sort.1.html)
__sort__ lines of text files.

```
sort [OPTION] [FILE]
```

## ORDERING OPTIONS:
- `-r, --reverse` - reverse the result of comparisons
- `-b, --ignore-leading-blanks` - ignore leading blanks
- `-R, --random-sort` - shuffle, but group identical keys
- `-f, --ignore-case` - fold lower case to upper case characters
- `-i, --ignore-nonprinting` - consider only printable characters
- `-n, --numeric-sort` - compare according to string numerical value
- `-V, --version-sort` - natural sort of (version) numbers within text
- `-h, --human-numeric-sort` - compare human readable numbers (e.g., 2K 1G)
- `-d, --dictionary-order` - consider only blanks and alphanumeric characters
- `-g, --general-numeric-sort` - compare according to general numerical value
- `--sort=WORD` - sort according to WORD: general-numeric -g, human-numeric -h, month -M, numeric -n, random -R, version -V
