
from talon import Context, actions, ui, Module, app

# from user.knausj_talon.code.snippet_watcher import snippet_watcher
import os

ctx = Context()
ctx.matches = r"""
mode: user.java

mode: command 
and code.language: java
"""
# short name -> ide clip name
ctx.lists["user.snippets"] = {
        "import":"im",
        "public":"pu",
        "private":"pr",
        "protected":"po",
        "class":"cl",
        "public class":"pcl",
        "interface":"in",
        "extends":"ext",
        "implements":"imp",
        "constant":"co",
        "case":"case",
        "define":"def",
        "else":"el",
        "else if":"eif",
        "if":"if",
        "switch":"sw",
        "method":"m",
        "variable":"v",
        "array list":"d.al",
        "hashmap":"d.hm",
        "hash set":"d.hs",
        "stack":"d.st",
        "singleton":"singlet",
        "abstract":"ab",
        "final":"fi",
        "static":"st",
        "method main":"main",
        "setter":"set",
        "getter":"get",
        "print line":"print",
        "print error":"serr",
        "fine print":"printf",
        "test":"test",
        "return":"re",
        "break":"br",
        "print array":"printlna",
        "for":"for",
        "while":"wh",
        "print exception":"errf",
        "catch":"ca",
        "try":"try",
        "try finally":"tryf",
        "throw":"thr",
        "throws":"ths",

}



def update_list(watch_list):
    ctx.lists["user.snippets"] = watch_list
