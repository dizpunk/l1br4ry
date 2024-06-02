# [TAR](https://man7.org/linux/man-pages/man1/tar.1.html)
The tar command creates and manipulates streaming archive files.


__Create__ an uncompressed tar archive
```
tar cvf ARCHIVE.tar DIRECTORY
```
- `c` - Create a new archive
- `v` - Verbosely list files
- `f` - Follow archive file name

---

__Create__ a tar gzipped archive
```
tar cvfz ARCHIVE.tar.gz DIRECTORY
```
- `z` - Filter the archive through gzip

---

__Create__ a bzipped (bzip2) tar archive
```
tar cvfj ARCHIVE.tar.bz2 DIRECTORY
```
- `j` - Filter the archive through bzip2

`N.B.` bzip2 takes more time to compress and decompress than gzip but requires less space.

---

__Extract__ a .tar archive
```
tar xvf ARCHIVE.tar
```
- `x` - Extract files from archive

---

__Extract__ a gzipped | bzipped tar archive
```
tar xvfz ARCHIVE.tar.gz
tar xvfj ARCHIVE.tar.bz2
```

---

__List__ the contents of an archive
```
tar tvf ARCHIVE.tar
tar tvfz ARCHIVE.tar.gz
tar tvfj ARCHIVE.tar.bz2
```

---

__Extract__ a single file or directory
```
tar xvf ARCHIVE.tar <PATH>
```

---

__Append__ a file or directory to an existing archive
```
tar rvf ARCHIVE.tar <PATH>
```
- `r` - Append files to the end of an archive
