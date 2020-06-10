os: linux
app: Gnome-terminal
-
tag(): terminal
action(edit.page_down):
  key(shift-pagedown)
action(edit.page_up):
  key(shift-pageup)
action(edit.paste):
  key(ctrl-shift-v)
action(edit.copy):
  key(ctrl-shift-c)

scroll up:
  key(shift-pageup)
scroll down:
  key(shift-pagedown)
run last:
  key(up)
  key(enter)
rerun <user.text>:
  key(ctrl-r)
  insert(text)
rerun search:
  key(ctrl-r)
kill all:
  key(ctrl-c)

# XXX - these are specific to certain terminals only and should move into their
# own <term name>.talon file
action(edit.find):
  key(ctrl-shift-f)
action(edit.word_left):
  key(ctrl-w-left)
action(edit.word_right):
  key(ctrl-w-right) 
# my code
up one:
    "cd .."
    key(enter)
move: insert("mv ")
find: insert("find ")
declare terminal <phrase>: 
 insert("termtitle ")
 insert(phrase)

exit:
 insert(":q!" )
 key(enter) 
done:
 insert(":w" )
 key(enter) 
save and quit:
 insert(":wq" )
 key(enter) 
#tmux commands
create new window:
 key(ctrl-b)
 key(c)
switch to window <number>:
  key(ctrl-b)
  key(“{number}”)
split horizontal:
  key(ctrl-b)
  key(%)
split vertical:
  key(ctrl-b)
  key(")
next pane:
  key(ctrl-b)
  key(o)
toggle pane:
  key(ctrl-b)
  key(;)
close pane:
  key(ctrl-b)
  key(x)
command cat: "cat "
  less: "less "
remove: "rm "
remove recursively: "rm -rf "
run touch: "touch "
admin: "sudo "
run docker: "docker "
list: 
  insert("ls")
  key(enter)
list all:
  insert("ls -a")
  key(enter)
clear: "clear\n"
  key(ctrl-w-right)
action(app.tab_open):
  key(ctrl-shift-t)
action(app.tab_close):
  key(ctrl-shift-w)
action(app.tab_next):
  key(ctrl-pagedown)
action(app.tab_previous):
  key(ctrl-pageup)
action(app.window_open):
  key(ctrl-shift-n)
go tab <number>:
  key("alt-{number}")
