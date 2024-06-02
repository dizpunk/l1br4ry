# [LS](https://man7.org/linux/man-pages/man1/ls.1.html)
The __ls__ command list directory contents.

<br>

__Usage__:
```
ls [OPTION] [FILE]
```

## DISPLAY OPTIONS
- `-1` list one file per line
- `-C` list entries by columns
- `-l` use a long listing format
- `-F, --classify` append indicator to entries
- `-A, --almost-all` do not list implied . and ..
- `-a, --all` do not ignore entries starting with .
- `--group-directories-first` group directories before files


## FILTERING AND SORTING OPTIONS
- `-t` sort by time, newest first
- `-S` sort by file size, largest first
- `-r, --reverse` reverse order while sorting
- `-R, --recursive` list subdirectories recursively
- `--sort=WORD` sort by WORD instead of name: none (-U), size (-S), time (-t), version (-v), extension (-X)


## LONG VIEW OPTIONS
- `--author` print the author of each file
- `-i, --inode` list each file's inode number
- `-h, --human-readable` print sizes like 1K 234M 2G etc
