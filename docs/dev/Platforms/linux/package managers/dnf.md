# [DNF](https://dnf.readthedocs.io/en/latest)
DNF or Dandified YUM is the next-generation version of the Yellowdog Updater, Modified (yum), a package manager for .rpm-based linux distributions

__Install__ a package
```
dnf install PACKAGE
```

__Reinstall__ a package
```
dnf reinstall PACKAGE
```

__Revert__ a package to the previous version
```
dnf downgrade PACKAGE
```

__Uninstall__ a package
```
dnf remove PACKAGE
```

__Remove__ installed __dependencies__ that are no longer required
```
dnf autoremove
```

__Search__ for a package
```
dnf search PACKAGE
```

__Provide__ information about a package
```
dnf info PACKAGE
```

__Check__ for __updates__ without installing the packages
```
dnf check-update
```

Check and perform __updates__
```
dnf upgrade
```
---
## Group command

List available groups
```
dnf group list
```

Install a group
```
dnf group install "GROUP_NAME"
```

Remove a group
```
dnf group remove "GROUP_NAME"
```
---
## Configuration file
__DNF__ by default uses the global configuration file at __/etc/dnf/dnf.conf__ and all *.repo files found under __/etc/yum.repos.d__. The latter is typically used for repository configuration and takes precedence over global configuration.

The configuration file has INI format consisting of section declaration and __name=value__ options below each on separate line. There are two types of sections in the configuration files: __main__ and __repository__.

Main section defines all global configuration options. The repository sections define the configuration for each (remote or local) repository. The section name of the repository in brackets serve as repo ID reference and should be unique across configuration files. The minimal repository configuration file should aside from repo ID consists of baseurl, metalink or mirrorlist option definition.
