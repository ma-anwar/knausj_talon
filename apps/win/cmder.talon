os:windows
app:ConEmu64.exe

-
move: insert("mv ")
remove: insert("rm ")
remove recursively:insert("rm -rf ")
save and quit:
    insert(":wq")
    key(return)


new console: 
    key(ctrl-t)
focus down:
    key(apps-down)
go up:
    key(ctrl-alt-u)
