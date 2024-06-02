# [LESS](https://man7.org/linux/man-pages/man1/less.1.html)
`Less` is a command line utility that displays the contents of a file or a command output, one page at a time (both forward and backward).


__Open__ a file
```
less [OPTIONS] FILENAME
```

- `-E` - Exit when EOF
- `-N` - Display line numbers
- `-X` - Display output without clearing the screen on exit
- `-p` - Start at the first occurrence of "pattern" in the file

__Redirect__ some output to less
```
ps aux | less
```

---


## Keyboard Navigation
- `b` - Move up one page
- `spacebar` - Move down one page
- `g` - Go to first line
- `G` - Go to last line
- `Ng` - Go to the Nth line
- `n` - When searching, go to the next occurrence
- `N` - When searching, go to the previous occurrence
- `/search` - Search forward from the current position for the "search"
- `?search` - Search backward from the current position for the "search"
- `q` - Quit less
