#provide both anchored and unachored commands via 'over'
<user.format_text>$: insert(format_text)

<user.format_text> <user.symbol>$:
  insert(format_text)
  insert(symbol)
<user.format_text> over: insert(format_text)
phrase <user.text>$: insert(user.text)
phrase <user.text> <user.symbol>$: 
  insert(user.text)
  insert(symbol)
phrase <user.text> over: insert(user.text)
(say | speak) <user.spaceText>$: insert(user.spaceText)
(say | speak) <user.spaceText> over: insert(user.spaceText)
//word <user.word>: insert(user.word)
list formatters: user.list_formatters()
hide formatters: user.hide_formatters()
^nope that$: user.clear_last_phrase()
^nope that was <user.formatters>$:
  user.clear_last_phrase()
  insert(user.reformat_last_phrase(user.formatters))
