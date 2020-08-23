settings():
    speech.debug = 1
slap:
	edit.line_end()
	key(enter)
#grep: "grep "
#elle less: "ls "
run L S: "ls\n"
run (S S H | S H): "ssh"
run diff: "diff "
dot pie: ".py"
run vim: "vim "
run make: "make\n"
run make (durr | dear): "mkdir "
word printf: "printf"
word shell: "shell"
dunder in it: "__init__"
#(jay son | jason ): "json"
#(http | htp): "http"
#tls: "tls"
#M D five: "md5"
#word (regex | rejex): "regex"
#word queue: "queue"
#word eye: "eye"
#word iter: "iter"
#word no: "NULL"
#word cmd: "cmd"
#word dup: "dup"
#word shell: "shell"
args: 
	insert("()")
	key(left)
[inside] (index | array): 
	insert("[]") 
	key(left)
empty array: "[]"
list in it: 
	insert("[]") 
	key(left)
(dickt in it | inside bracket | in bracket): 
	insert("{}") 
	key(left)
(in | inside) percent: 
	insert("%%") 
	key(left)
zoom [in]: edit.zoom_in()
zoom out: edit.zoom_out()
(page | scroll) up: key(pgup)
(page | scroll) down: key(pgdown)
copy that: edit.copy()
cut that: edit.cut()
paste that: edit.paste()
undo that: edit.undo()
redo that: edit.redo()
paste match: edit.paste_match_style()
file save: edit.save()
volume up: key(volup)
volume down: key(voldown)
mute: key(mute)
play next: key(next)
play previous: key(prev)
(play | pause): key(play_pause)  
wipe: key(backspace)    
(pad | padding): 
	insert("  ") 
	key(left)
funny: "ha ha"
#menu: key(alt)


#my code
run terminal: key(ctrl-alt-t)
stupid test:
    print(app.name())
    print(app.executable())
    print(app.bundle())
search that:
	user.system_command("midori https://www.google.com/search?q=\"$(xclip -o)\"&")
