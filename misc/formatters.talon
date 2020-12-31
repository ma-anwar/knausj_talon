#provide both anchored and unachored commands via 'over'
# (say | speak | phrase) <user.text>: 
#   result = user.formatted_text(text, "NOOP")
#   insert(result)
# (say | speak | phrase) <user.text> over: 
#   result = user.formatted_text(text, "NOOP")
#   insert(result)
#<user.format_text>$: insert(format_text)
#Consider modifying these in light of the new formatters
<user.format_text> <user.symbol_key>$:
  user.insert_many(format_text_list)
#   #insert(format_text)
  insert(symbol_key)
#<user.format_text> over: insert(format_text)
# #phrase <user.format_text>$: insert(user.format_text)
phrase <user.text> <user.symbol_key>$: 
  result = user.formatted_text(text, "NOOP")
  insert(result)
#   #insert(user.text)
  insert(symbol_key)
#phrase <user.text> over: insert(user.text)
#(say | speak) <user.spaceText>$: insert(user.spaceText)
#(say | speak) <user.spaceText> over: insert(user.spaceText)
list formatters: user.list_formatters()
hide formatters: user.hide_formatters()
#word <user.word>: insert(user.word)
phrase <user.text>$: user.insert_formatted(text, "NOOP")
phrase <user.text> over: user.insert_formatted(text, "NOOP")
{user.prose_formatter} <user.prose>$: user.insert_formatted(prose, prose_formatter)
{user.prose_formatter} <user.prose> over: user.insert_formatted(prose, prose_formatter)
<user.format_text>+$: user.insert_many(format_text_list)
<user.format_text>+ over: user.insert_many(format_text_list)
<user.formatters> that: user.formatters_reformat_selection(user.formatters)
word <user.word>: insert(user.word)
format help: user.formatters_help_toggle()
format recent: user.formatters_recent_toggle()
format repeat <number>: 
  result = user.formatters_recent_select(number)
  insert(result)
format copy <number>:
  result = user.formatters_recent_select(number)
  clip.set_text(result)
^nope that$: user.formatters_clear_last()
^nope that was <user.formatters>$:
  user.formatters_clear_last()
  insert(user.formatters_reformat_last(user.formatters))
phrase <user.text> space:
     insert(user.text)
     insert(' ')
     
phrase <user.text> enter:
    insert(user.text)
    key(enter)


