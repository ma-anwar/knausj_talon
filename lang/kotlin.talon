code.language: kotlin
-
tag(): user.code_generic
state comment: "// "
state block comment: 
    insert('/**/')
    edit.left()
    repeat(1)
    key(enter)
    key(enter)
    edit.up()
state package: "package "
action(user.code_import): "import "
as: "as "
safe as: "as? "
is: "is "
is not: "!is "

in: "in "
not in: "!in "
state super: "super"
state break: "break"
action(user.code_type_class): "class "
state continue: "continue"
action(user.code_state_if):
    insert("if () ")
    edit.left()
    edit.left()
action(user.code_state_else):
    insert("else ")
action(user.code_state_while):
    insert("while () ")
    edit.left()
    edit.left()
state do: "do "
action(user.code_state_for):
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
push:
    edit.line_end()
ball: "val "
bar: "var "
