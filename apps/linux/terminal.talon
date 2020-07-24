os: linux
app: Gnome-terminal
app: Mate-terminal
-
tag(): terminal
tag(): file_manager
tag(): gdb
#todo: generic tab commands
#tag(): tabs
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
state move: insert("mv ")
state find: insert("find ")
declare terminal <phrase>: 
 insert("termtitle ")
 insert(phrase)
state cat: "cat "
state more: "more "

exit:
 insert(":q!" )
 key(enter) 
done:
 insert(":w" )
 key(enter) 
save and quit:
 insert(":wq" )
 key(enter) 
less: "less "
state remove: "rm "
state remove recursively: "rm -rf "
state touch: "touch "
state admin: "sudo "
state docker: "docker "
list: 
  insert("ls")
  key(enter)
list all:
  insert("ls -a")
  key(enter)
clear: "clear\n"
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
