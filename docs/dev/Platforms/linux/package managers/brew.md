# [BREW](https://brew.sh/)
Homebrew is a free and open-source software package management system for macOS

__Install__ a formula
```
brew install FORMULA
```

__Reinstall__ a formula or cask
```
brew reinstall FORMULA
```

__Uninstall__ a formula
```
brew uninstall FORMULA
```

__List__ installed formulae and casks
```
brew list
```

__List__ explicitly installed formulae (not dependencies)
```
brew leaves
```

__Display__ brief __statistics__ of Homebrew installation or, if a formula or cask is provided, show a summary
```
brew info [FORMULA]
```

__Search__ for a formula (with a name or a /regex/)
```
brew search FORMULA | /FORMULA/
```

__Uninstall__ no longer needed __dependencies__
```
brew autoremove
```

__Remove outdated downloads__ and versions for all formulae and casks
```
brew cleanup
```

__Check__ system for potential problems
```
brew doctor
```

__Print export statements__. When run in a shell, add installation of Homebrew to your PATH, MANPATH, and INFOPATH. The variables HOMEBREW_PREFIX, HOMEBREW_CELLAR and HOMEBREW_REPOSITORY are also exported to avoid querying them multiple times
```
brew shellenv
```

__Pin__ the specified formula, preventing it from being upgraded
```
brew pin FORMULA
```

__Unpin__ formula, allowing it to be upgraded
```
brew unpin FORMULA
```

__Fetch__ the newest version of Homebrew and all formulae from GitHub
```
brew update
```

__Upgrade__ outdated casks and outdated, unpinned formulae
```
brew upgrade
```
