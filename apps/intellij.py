from talon import Context, actions, ui, Module, app

ctx = Context()
ctx.matches = r'''
app: jetbrains-idea
'''
@ctx.action_class('win')
class win_actions:
    def filename(): 
        title = actions.win.title()
        if title == "":
            title = ui.active_window().doc
        return title

    def file_ext():
        #print((actions.win.filename()).split(".")[1].split()[0])
        return ((actions.win.filename()).split(".")[1].split()[0]).strip()
        