from talon import Context, Module

mod = Module()

tagList = [
    "debugger",
    "disassembler",
    "firefox",
    "gdb",
    "git",  # commandline tag for git commands
    "ida",
    "powerEditor",
    "tabs",
    "taskwarrior",  # commandline tag for taskwarrior commands
    "terminal",
    "tmux",
    "windbg",
]
for entry in tagList:
    mod.tag(entry, f"tag to load {entry} and/or related plugins ")
