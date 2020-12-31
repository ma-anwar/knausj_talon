-
(abbreviate|abreviate|brief) {user.abbreviation}: "{abbreviation}"

brief {user.abbreviation} <user.text>:
  insert("{abbreviation}")
  result = user.formatted_text(text, "camel")
  insert(" {result}")
