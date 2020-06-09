<<<<<<< HEAD

app: cmd.exe
app: iTerm2
app: Terminal
app: Windows Command Processor
app: ConEmu64.exe
app: Gnome-terminal
-
<<<<<<< HEAD
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
=======
=======
tag: terminal
-

# Standard commands
>>>>>>> upstream/master
git add patch: "git add . -p\n"
git add: "git add "
git add everything: "git add -u\n"
git bisect: "git bisect "
git blame: "git alame "
git branch: "git branch "
git branch <user.text>: "git branch {text}"
git checkout: "git checkout "
git checkout master: "git checkout master\n"
git checkout <user.text>: "git checkout {text}"
git cherry pick: "git cherry-pick "
git clone: "git clone "
git commit message <user.text>: "git commit -m '{text}'"
git commit: "git commit\n"
git diff (colour|color) words: "git diff --color-words "
git diff: "git diff "
git diff cached: "git diff --cached\n"
git fetch: "git fetch\n"
git fetch <user.text>: "git fetch {text}"
git in it: "git init\n"
git log: "git log\n"
git merge: "git merge "
git merge <user.text>:"git merge {text}"
git move: "git mv "
git new branch: "git checkout -b "
git pull: "git pull\n"
git pull origin: "git pull origin "
git pull rebase: "git pull --rebase\n"
git pull fast forward: "git pull --ff-only\n"
git pull <user.text>: "git pull {text} "
git push: "git push\n"
git push origin: "git push origin "
git push up stream origin: "git push -u origin"
git push <user.text>: "git push {text} "
git push tags: "git push --tags\n"
git rebase: "git rebase\n"
git rebase continue: "git rebase --continue"
git rebase skip: "git rebase --skip"
git remove: "git rm "
git (remove|delete) branch: "git branch -d "
git (remove|delete) remote branch: "git push --delete "
git reset: "git reset "
git reset soft: "git reset --soft "
git reset hard: "git reset --hard "
git show: "git show "
git stash pop: "git stash pop\n"
git stash: "git stash\n"
git status: "git status\n"
git tag: "git tag "
>>>>>>> upstream/master

# Convenience
git edit config: "git config --local -e\n"

git clone clipboard:
  insert("git clone ")
  edit.paste()
  key(enter)
git diff highlighted:
    edit.copy()
    insert("git diff ")
    edit.paste()
    key(enter)
git diff clipboard:
    insert("git diff ")
    edit.paste()
    key(enter)
git add highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    key(enter)
git add clipboard:
    insert("git add ")
    edit.paste()
    key(enter)
git commit highlighted:
    edit.copy()
    insert("git add ")
    edit.paste()
    insert("\ngit commit\n")
