# [EXA](https://the.exa.website/)
__exa__ is an improved file lister with more features and better defaults than the standard `ls` command.

<br>

__Usage__:
```
exa [OPTIONS] [FILES] || [DIRECTORIES]
```

## DISPLAY OPTIONS
- `-R, --recurse` recurse into directories
- `-1, --oneline` display one entry per line
- `-T, --tree` recurse into directories as a tree
- `-F, --classify` display type indicator by file names
- `-l, --long` display extended file metadata as a table

## FILTERING AND SORTING OPTIONS
- `-r, --reverse` reverse the sort order
- `-a, --all` show hidden and 'dot' files
- `-D, --only-dirs` list only directories
- `-s, --sort SORT_FIELD` which field to sort by
- `-L, --level DEPTH` limit the depth of recursion
- `--group-directories-first` list directories before other files

## LONG VIEW OPTIONS
- `-i, --inode` list each file's inode number
- `-n, --numeric` list numeric user and group IDs
- `-h, --header` add a header row to each column
- `-S, --blocks` show number of file system blocks
- `-H, --links` list each file's number of hard links
- `-b, --binary` list file sizes with binary prefixes
- `--git` list each file's Git status, if tracked or ignored
- `-B, --bytes` list file sizes in bytes, without any prefixes
- `-@, --extended` list each file's extended attributes and sizes
- `--octal-permissions` list each file's permission in octal format
