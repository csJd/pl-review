# My Frequently Forgotten Facts (FFFs)
------
### 1. Set my .gitconfig
Learn it [here](https://classroom.udacity.com/courses/ud775/lessons/2980038599/concepts/33417185870923)
``` sh
git config --global core.editor "'d:/dsr/sublime-text-3/sublime_text.exe' -n -w"
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

