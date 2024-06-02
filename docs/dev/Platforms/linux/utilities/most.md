# [MOST](https://linux.die.net/man/1/most)
`Most` is a paging program that displays, one windowful at a time, the contents of a file on a terminal.


__Open__ a file
```
most [OPTIONS] filename
```

- `-b` - Display file in hexadecimal notation (16 bytes per line)
- `+line` - Start up at the specified "line"
- `+/string` - Start at line containing first occurrence of "string"

__Redirect__ some output to most
```
ps aux | most
```

---
## Keyboard Navigation
- `u` - Move up one page
- `spacebar` - Move down one page
- `t` - Go to the top of buffer
- `b` - Go to the bottom of buffer
- `g` - Prompt for a line number to jump to
- `n` - When searching, go to the next occurrence
- `/search` - Search forward from current position for "search"
- `?search` - Search backward from current position for "search"
- `e` - Edit file
- `q` - Quit most
