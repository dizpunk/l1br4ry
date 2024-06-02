# [UNIQ](https://man7.org/linux/man-pages/man1/uniq.1.html)
The `uniq` command report or omit repeated lines. <br>
With no options, matching lines are merged to the first occurrence.

```
uniq [OPTION] INPUT
```

- `-c` - prefix lines by the number of occurrences
- `-d` - only print duplicate lines, one for each group
- `-D` - print all duplicate lines
- `-i` - ignore differences in case when comparing
- `-u` - only print unique lines
