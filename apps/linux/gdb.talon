
os: linux
app: Gnome-terminal

-
continue:
    insert("c")
    key(enter)
break star: "break *"
break: "break "
info break: "info breakpoints "
break main: 
    insert("break main")
    key(enter)
print:"p "
print list:"l "
back trace:
    insert("bt ")
    key(enter)
disassemble: "disassemble "
name:"p/a "
dump list: "dumplist "
back trace thread: "btthread "
back trace list: "btthreadlist "
back trace all: "btthreadall "
page fault: "btpagefault "
hook stop: "hook-stop"
step:
    insert("si")
    key(enter)
step <number>:
    insert("step {number}")
    key(enter)
finish:
    insert("finish")
    key(enter)
set logging on:
    insert("set logging on")
    key(enter)
set logging file:
    insert("set logging file ")
info registers:
    insert("info registers")
    key(enter)
