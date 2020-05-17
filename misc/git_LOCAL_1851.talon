
app: cmd.exe
app: iTerm2
app: Terminal
app: Windows Command Processor
app: ConEmu64.exe
app: Gnome-terminal
-
get add patch: insert("git add . -p\n")
get add: insert("git add ")
get bisect: insert("git bisect ")
get branch: insert("git branch ")
get checkout: insert("git checkout ")
get cherry pick: insert("git cherry-pick ")
get clone: insert("git clone ")
get clone clipboard:
  insert("git clone ")
  edit.paste()
  key(enter)
get commit message <phrase>: insert("git commit -m '{phrase}'")
get commit: insert("git commit\n")
get diff (colour|color) words: insert("git diff --color-words ")
get diff: insert("git diff ")
get fetch: insert("git fetch\n")
get fetch <phrase>: insert("git fetch {phrase}")
get in it: insert("git init\n")
get log: insert("git log\n")
get merge: insert("git merge ")
get merge <phrase>:insert("git merge {phrase}")
get move: insert("git mv ")
get new branch: insert("git checkout -b ")
get pull: insert("git pull\n")
get pull origin: insert("git pull origin ")
get pull rebase: insert("git pull --rebase\n")
get pull <phrase>: insert("git pull {phrase} ")
get push: insert("git push\n")
get push origin: insert("git push origin ")
get push <phrase>: insert("git push {phrase} ")
get push tags: insert("git push --tags\n")
get rebase: insert("git rebase\n")
get rebase continue: insert("git rebase --continue")
get rebase skip: insert("git rebase --skip")
get remove: insert("git rm ")
get reset: insert("git reset ")
get reset soft: insert("git reset --soft ")
get reset hard: insert("git reset --hard ")
get show: insert("git show ")
get stash pop: insert("git stash pop\n")
get stash: insert("git stash\n")
get status: insert("git status\n")
get tag: insert("git tag ")

