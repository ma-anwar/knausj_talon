# commands for common vim commands that are used in vim based editors
# started putting vscode specific commands here
tag: user.powerEditor
-

slap above:
    key(escape O)
slap:
    key(escape o)
slap <user.symbol_key>:
    key(escape A)
    insert(symbol_key)
    sleep(0.1)
    key(escape o)
line clone:
    key(escape V y $ p)
line delete:
    key(escape d d)
word change:
    key(escape c i w)
word delete:
    key(escape d i w i)
clear until <user.unmodified_key>:
    key(escape d t unmodified_key )
clear through <user.key>:
    key(escape d f key )
slide <user.key>:
    key(escape t key l a)
slide <number> <user.key>:
    key(escape)
    insert("{number}")
    key(t key)
line choose:
    key(escape V)
yank until <user.key>:
    key(escape v t key y)
copy until <user.key>:
    key(escape v t key ctrl-c)
power hover:
    key(escape g h)
match previous <user.key>:
    key(escape F key )
match next <user.key>:
    key(escape f key )
delete method:
    edit.right()
    key(escape d F . i)
# easy motion commands
easy car <user.letter>:
    key(escape \ \ f letter)
easy car back <user.letter>:
    key(escape \ \ F letter)
easy word:
    key(escape \ \ w)
easy word back:
    key(escape \ \ b)
easy end word:
    key(escape \ \ e)
easy end word back:
    key(escape \ \ g e)
easy camel:
    key(escape \ \ l)
easy camel back:
    key(escape \ \ h)

run code:
    key(ctrl-alt-n)
made break:
    insert("<br/>")
made arrow:
    insert("-->")
    