code.language: kotlin
-
tag(): user.code_generic
tag(): user.code_operators
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
state function: "fun "
state private: "private "
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

action(user.code_operator_subscript): 
	insert("[]")
	key(left)
action(user.code_operator_assignment): " = "
action(user.code_operator_subtraction): " - "
action(user.code_operator_subtraction_assignment): " -= "
action(user.code_operator_addition): " + "
action(user.code_operator_addition_assignment): " += "
action(user.code_operator_multiplication): " * "
action(user.code_operator_multiplication_assignment): " *= "
action(user.code_operator_exponent): " ** "
action(user.code_operator_division): " / "
action(user.code_operator_division_assignment): " /= "
action(user.code_operator_modulo): " % "
action(user.code_operator_modulo_assignment): " %= "
action(user.code_operator_equal): " == "
action(user.code_operator_not_equal): " != "
action(user.code_operator_greater_than): " > "
action(user.code_operator_greater_than_or_equal_to): " >= "
action(user.code_operator_less_than): " < "
action(user.code_operator_less_than_or_equal_to): " <= "
action(user.code_operator_and): " && "
action(user.code_operator_or): " || "
action(user.code_operator_bitwise_and): " & "
action(user.code_operator_bitwise_and_assignment): " &= " 
action(user.code_operator_bitwise_or): " | "
action(user.code_operator_bitwise_or_assignment): " |= "
action(user.code_operator_bitwise_exlcusive_or): " ^ "
action(user.code_operator_bitwise_exlcusive_or_assignment): " ^= "
action(user.code_operator_bitwise_left_shift): " << "
action(user.code_operator_bitwise_left_shift_assignment): " <<= "
action(user.code_operator_bitwise_right_shift): " >> "
action(user.code_operator_bitwise_right_shift_assignment): " >>= "