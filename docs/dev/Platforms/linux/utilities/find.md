# [FIND]()
Search for files in a directory hierarchy.

```
find PATH [OPTIONS] COMMANDS
```
- `-L` - Follow symbolic links
- `-P` - Never follow symbolic links
- `-H` - Do not follow symbolic links, except while processing command line arguments
- `-name` - Find files by name
- `-delete` - Delete matched files
- `-iname` - Find files by name (case insensitive)
- `-maxdepth` - Descend at most x directory levels
- `-regex` - Matches pattern using regular expression (BRE)
- `-size` - Find by size
  - k - kilobytes
  - M - megabytes
  - G - gigabytes
  - T - terabytes
  - P - petabytes
- `-type` - Filter files for type
  - b - Block special
  - c - Character special
  - d - Directory
  - f - Regular file
  - l - Symbolic link
  - p - FIFO
  - s - Socket
- `-mtime x[smhdw]` - Find by modified time
  - s - second
  - m - minute (60 seconds)
  - h - hour (60 minutes)
  - d - day (24 hours)
  - w - week (7 days)
