# My Frequently Forgotten Facts (FFFs)
------
### 1. Set my .gitconfig
Learn it [here](https://classroom.udacity.com/courses/ud775/lessons/2980038599/concepts/33417185870923)
``` sh
git config --global core.editor "'d:/dsr/sublime-text-3/sublime_text.exe' -n -w"
# Configure Git on Windows to properly handle line endings
# git config --global core.autocrlf true
git config --global push.default upstream
git config --global merge.conflictstyle diff3
git config --global user.name "Deng"
git config --global user.email "scutjd@gmail.com"
```

### 2. `diff`s
cmd|first|second
:---:|:---:|:---:
`git diff`|working directory|staging area
`git diff --staged`|staging area|HEAD
`git diff commit1`|commit1|HEAD
`git diff commit1 commit2`|commit1|commit2
`git show commit1`|commit1's parent|commit1

### 3. branch
* `git branch`  Show branchs
* `git branch new-branch-name`  Create a new branch
* `git checkout branch-name`  Switch to a branch (even a remote branch)
* `git checkout -b new-brach-name`  Create a new branch and switch to it
* `git merge branch1 branch2 ...`  Merge branch1 and branch2 into current branch 
* `git branch -d branch-name`  Delete a branch

### 4. remote
* `git remote`  Show remotes
* `git remote -v`  Show remotes more verbose
* `git remote add <name> <url>`  Adds a remote named `<name>` for the repository at `<url>`
  ``` bash
  git remote add origin git@github.com:csJd/pl-review.git
  ```
* `git push <remote-name> <branch-name>`  Push local branch named `<branch-name>` to remote named `<remote-name>`
  ``` bash
  git push origin master
  ```
* `git pull <remote-name> <branch-name>`  Pull remote named `<remote-name>` to local branch named `<branch-name>`
  ``` bash
  git pull origin master
  ```
  which equals
  ``` bash
  git fetch origin
  git merge master origin/master
  ```
