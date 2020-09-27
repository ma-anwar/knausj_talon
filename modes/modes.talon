#defines the various mode commands
mode: all
-
welcome back:
    user.mouse_wake()
    user.history_enable()
    speech.enable()
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
dragon mode: speech.disable()
talon mode: speech.enable()
^dictation mode$:
    mode.disable("sleep")
    mode.disable("command")
    mode.enable("dictation")
^command mode$:
    mode.disable("sleep")
	mode.disable("dictation")
	#mode.disable("bug")
	mode.enable("command")
^bug mode$:
    mode.disable("sleep")
    mode.disable("dictation")
    mode.enable("command")
[enable] debug mode:
    mode.enable("user.gdb")
disable debug mode:
    mode.disable("user.gdb")

^[enable] terminal mode$:
    mode.enable("user.commandline")
^disable terminal mode$:
    mode.disable("user.commandline")
    
^force see sharp$: user.code_set_language_mode("csharp")
^force see plus plus$: user.code_set_language_mode("cplusplus")
^force haskell$: user.code_set_language_mode("haskell")
^force go (lang|language)$: user.code_set_language_mode("go")
^force java: user.code_set_language_mode("java")
^force java script$: user.code_set_language_mode("javascript")
^force type script$: user.code_set_language_mode("typescript")
^force markdown$: user.code_set_language_mode("markdown")
^force python$: user.code_set_language_mode("python")
^force talon [language]$: user.code_set_language_mode("talon")
^clear language modes$: user.code_clear_language_mode()
