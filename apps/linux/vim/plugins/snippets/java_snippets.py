

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
        "abstract":"ab",
        "assert":"as",
        "assert true":"at",
        "assert false":"af",
        "assert equals":"ae",
        "array list":"d.al",
        "break":"br",
        "case":"cs",
        "catch":"ca",
        "class":"cl",
        "class extends":"cle",
        "full class":"clc",
        "constant":"co",
        "constructor":"cn",
        "constant string":"cos",
        "default":"de",
        "define":"def",
        "else if":"elif",
        "else":"el",
        "extends":"ext",
        "final":"fi",
        "field":"f",
        "fine print":"printf",
        "for":"for",
        "for each":"fore",
        "for counter":"fori",
        "getter":"get",
        "get her center":"gs",
        "if":"if",
        "implements":"imp",
        "import":"im",
        "interface":"in",
        "java beans":"j.b",
        "java input":"j.i",
        "java math":"j.m",
        "java net":"j.n",
        "java utility":"j.u",
        "list":"list",
        "method main":"main",
        "map":"map",
        "method":"m",
        "method throws":"mt",
        "method with doc":"md",
        "object":"o",
        "primitive": "i",
        "package":"pa",
        "print":"p",
        "print array":"printlna",
        "print error":"serr",
        "print exception":"errf",
        "print line":"pl",
        "private":"pr",
        "protected":"po",
        "public class":"pcl",
        "public":"pu",
        "return":"re",
        "setter":"set",
        "set variable":"cc",
        "singleton":"singlet",
        "stack":"d.st",
        "set":"set",
        "string":"str",
        "static":"st",
        "switch":"sw",
        "test throws":"tt",
        "test":"t",
        "test case":"tc",
        "throw":"th",
        "throws":"ths",
        "try finally":"tryf",
        "try":"try",
        "variable":"v",
        "while":"wh",


}




def update_list(watch_list):
    ctx.lists["user.snippets"] = watch_list
