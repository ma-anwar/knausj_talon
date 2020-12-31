# commands for common vim commands that are used in vim based editors
tag: user.powerEditor
-
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
    key(escape t key a)
slide <number> <user.key>:
    key(escape t number key )
line choose:
    key(escape V)
yank until <user.key>:
    key(escape v t key y)
copy until <user.key>:
    key(escape v t key ctrl-c)