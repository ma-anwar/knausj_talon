os: linux
tag: user.terminal 
-
tag(): user.splits
mux: "tmux "

#session management
mux new session: 'tmux new '
mux sessions:
    key(ctrl-b)
    key(s)
mux name session:
    key(ctrl-b)
    key($)
mux save session:
    key(ctrl-b)
    key(ctrl-s)
mux load session:
    key(ctrl-b)
    key(ctrl-r)
mux kill session: 'tmux kill-session -t'
#window management
mux new window:
    key(ctrl-b)
    key(c)
mux window <number_small>:
    key(ctrl-b )
    key('{number_small}')
mux previous window:
    key(ctrl-b)
    key(p)
mux next window:
    key(ctrl-b)
    key(n)
mux rename window:
    key(ctrl-b)
    key(,)
mux close window:
    key(ctrl-b)
    key(&)
#pane management
mux split horizontal: user.split_window_horizontally()
action(user.split_window_horizontally):
    key(ctrl-b)
    key(%)
mux split vertical: user.split_window_vertically()
action(user.split_window_vertically):
    key(ctrl-b)
    key(")
mux next pane: user.split_next()
action(user.split_next):
    key(ctrl-b)
    key(o)
mux move <user.arrow_key>:
    key(ctrl-b)
    key(arrow_key)
mux close pane: user.split_clear()
action(user.split_clear):
    key(ctrl-b)
    key(x)
mux pane <number_small>: user.split_number(number_small)
