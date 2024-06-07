# [Git](https://www.git-scm.com/)

## Configuration
```
# User Information
git config --global user.name "<name>"
git config --global user.email "<email>"

# Aliases
git config --global alias.<alias-name> "<git-command>"

# Default Editor
git config --system core.editor <editor>
```


## Initialization
```
# Initialize locally
git init <directory>

# Clone
git clone <repo>
```


## Making Changes
```
# Check current status
git status

# Stage changes
git add <file>
git add <directory>

# Committing staged changes
git commit -m "<message>"

# Amending the Last Commit
git commit --amend
```


## Undoing Changes
```
# Reset staging area
git reset <file>/<directory>

git reset                   # Reset to most recent commit, working directory unchanged
git reset --hard            # Reset staging area and working directory to most recent commit
git reset <commit>          # Reset staging area to match, working directory unchanged
git reset --hard <commit>   # Resets staging area and working directory to match

# Create a commit that undoes all changes made in <commit>, then apply it to the current branch
git revert <commit>
```


## Viewing Differences
```
# Show unstaged changes between your index and working directory
git diff

# Show the difference between the working directory and the last commit
git diff HEAD

# Show the difference between staged changes and the last commit
git diff --staged
```


## Branching
```
# List branches
git branch

# Create branches
git branch <branch>
git checkout -b <branch>

# Switch to other branch
git checkout <branch>

# Merge <branch> into the current branch
git merge <branch>

# Rebase the current branch onto <base>
git rebase <base>
git rebase -i <base>  # interactive
```
