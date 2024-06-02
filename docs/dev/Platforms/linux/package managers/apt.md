# [APT](https://en.wikipedia.org/wiki/APT_(software))
Advanced package tool, or APT, is a user interface that works with core libraries to handle the installation and removal of software on Debian, and Debian-based linux distributions

__Install__ a package
```
apt install PACKAGE
```

__Uninstall__ a package
```
apt remove PACKAGE
```

__Uninstall__ a package and delete configuration files
```
apt purge PACKAGE
```

__List__ available packages
```
apt list [--installed | --upgradeable]
```

__Search__ for a package
```
apt search PACKAGE
```

__Provide__ information about a package
```
apt show PACKAGE
```

__Remove__ installed __dependencies__ that are no longer required
```
apt autoremove
```

__Check__ for __updates__ information from all configured sources
```
apt update
```

Install available __upgrades__
```
apt upgrade
```

Install available __upgrades__ and remove obsolete packages
```
apt full-upgrade
```

__Edit__ your __sources.list__ file
```
apt edit-sources
```

---
## Configuration file
The source list __/etc/apt/sources.list__ and the files contained in __/etc/apt/sources.list.d/__
are designed to support any number of active sources and a variety of source media. The
files list one source per line (one-line style) or contain multiline stanzas defining one
or more sources per stanza (deb822 style), with the most preferred source listed first (in
case a single version is available from more than one source).

Files in this format have the extension .list. Each line specifying a source starts with a
type (e.g.  deb-src) followed by options and arguments for this type. Individual entries
cannot be continued onto a following line. __Empty lines are ignored__, and a __#__ character
anywhere on a line marks the remainder of that line as a __comment__. Consequently an entry
can be disabled by commenting out the entire line.
