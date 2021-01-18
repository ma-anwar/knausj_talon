#defines the various mode commands
mode: all
-
welcome back:
    user.mouse_wake()
    user.history_enable()
    user.talon_mode()
sleep all:
    user.switcher_hide_running()
    user.history_disable()
    user.homophones_hide()
    user.help_hide()
    user.mouse_sleep()
    speech.disable()
    user.engine_sleep()
talon sleep: speech.disable()
talon wake: speech.enable()
# begin: these commands are really for windows & mac with Dragon.
dragon mode: user.dragon_mode()
talon mode: user.talon_mode()
# end: these commands are really for windows & mac on Dragon.
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
    user.code_clear_language_mode()
    mode.disable("user.gdb")
^command mode$:
    # mode.enable('user.mouse')
    mode.disable("sleep")
	mode.disable("dictation")
	#mode.disable("bug")
    mode.enable("command")
^mouse mode$:
    #mode.enable('mouse')
    mode.disable('command')

^bug mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
# [enable] debug mode:
#     mode.enable("user.gdb")
# disable debug mode:
#     mode.disable("user.gdb")

[enable] terminal mode$:
    mode.enable("user.commandline")
    #insert("test")
disable terminal mode$:
    mode.disable("user.commandline")
    
# ^force see sharp$: user.code_set_language_mode("csharp")
# ^force see plus plus$:code_set_language_mode("cplusplus")
# ^force haskell$: user.code_set_language_mode("haskell")
# ^force go (lang|language)$: user.code_set_language_mode("go")
# ^force java: user.code_set_language_mode("java")
# ^force java script$: user.code_set_language_mode("javascript")
# ^force type script$: user.code_set_language_mode("typescript")
# ^force markdown$: user.code_set_language_mode("markdown")
# ^force python$: user.code_set_language_mode("python")
# ^force talon [language]$: user.code_set_language_mode("talon")
# ^clear language modes$: user.code_clear_language_mode()
