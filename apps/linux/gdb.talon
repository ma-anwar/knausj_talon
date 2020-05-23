
os: linux
app: Gnome-terminal

-
continue:
    insert("c")
    key(enter)
break: "break "
break main: 
    insert("break main")
    key(enter)
print:"p "
list:"l "
back trace:
    insert("bt ")
    key(enter)
disassemble: "disassemble "
name:"p/a "
code:"l "
dump list: "dumplist "
back trace thread: "btthread "
back trace list: "btthreadlist "
back trace all: "btthreadall "
page fault: "btpagefault "
hook stop: "hook-stop"