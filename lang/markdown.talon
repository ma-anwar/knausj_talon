code.language: markdown
-
heading <number>:
    insert('#')
    repeat(number-1)
    insert('  ')
bold:
    insert('****')
    edit.left()
    repeat(1)
italic:
    insert('**')
    edit.left()
code block:
    insert('``````')
    edit.left()
    repeat(2)
    key(enter)
    key(enter)
    edit.up()
