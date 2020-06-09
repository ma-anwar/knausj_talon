code.language: kt
-

state package: "package "
state import: "import "
as: "as "
safe as: "as? "
is: "is "
is not: "!is "

in: "in "
not in: "!in "
state break: "break"
state class: "class "
state continue: "continue"
state if: 
    insert("if () ")
    edit.left()
    edit.left()
state else:
    insert("else ")
state while:
    insert("while () ")
    edit.left()
    edit.left()
state do: "do "
state for:
    insert("for () ")
    edit.left()
    edit.left()
state when:
    insert("when () ")
    edit.left()
    edit.left()
push brackets:
    edit.line_end()
    #insert("{")
    #key(enter)
    insert("{}")
    edit.left()
    key(enter)
    key(enter)
    edit.up()