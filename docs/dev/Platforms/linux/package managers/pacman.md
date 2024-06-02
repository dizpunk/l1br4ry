# [PACMAN](https://wiki.archlinux.org/title/pacman)
Pacman is a simple library-based package manager which manages software packages on Arch-based linux distributions

__Install__ a package or group
```
pacman -S PACKAGE | PACKAGE_GROUP
```

__Install__ a local package
```
pacman -U PACKAGE
```

__Uninstall__ a package
```
pacman -R PACKAGE
```

__Uninstall__ a package and its dependencies
```
pacman -Rs PACKAGE
```

Pacman queries the local package database with the `-Q` flag, the sync database with the `-S` flag and the files database with the `-F` flag. `-s` is the builtin ERE flag.

__List__ installed packages
```
pacman -Q
```

__Search__ for a package
```
pacman -Ss PACKAGE
```

__Search__ for already installed packages
```
pacman -Qs PACKAGE
```

__Provide__ information about a package
```
pacman -Si PACKAGE
```

__Remove__ all files from cache
```
pacman -Scc
```

__Synchronize__ the repository databases and __update__ the system's packages (excluding local packages)
```
pacman -Syu
```
---
## Configuration file
Pacman's settings are located in __/etc/pacman.conf__: this is the place where the user configures the program to work in the desired manner.

Pacman will attempt to read pacman.conf each time it is invoked. This configuration file is divided into __sections__ or __repositories__. Each section defines a package repository that pacman can use when searching for packages in --sync mode. The exception to this is the `[options]` section, which defines global options.

__Comments__ are only supported by beginning a line with the hash (__#__) symbol. Comments cannot begin in the middle of a line.
