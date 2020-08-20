from talon import Context, Module, actions, grammar


simple_vocabulary = [
    "nmap",
    "admin",
    "Cisco",
    "Citrix",
    "VPN",
    "DNS",
    "minecraft",
    "kotlin",
    "mux",
    "vim",
    "nav",
    "edit",
    "debug",
    "org",
    "intellij",
    "firebase",
    "null",
    "kernel",
    "eigenvalue",
    "eigenvector",
    "eigenspace",
    "eigenvalues",
    'eigenvectors',
    'eigenspaces',
    "scalar",
    "diagonalizable",
    "algebraic",
    "Caley-Hamilton",

]

mapping_vocabulary = {
    "i": "I",
    "i'm": "I'm",
    "i've": "I've",
    "i'll": "I'll",
    "i'd": "I'd",
    "cortland": "kotlin",
    'clothes': "close",
    "bunt": "ubuntu",
    "colonel":"kernel",
    "scaler":"scalar",
    "Kelly hamilton": "Caley-Hamilton",

}

mapping_vocabulary.update(dict(zip(simple_vocabulary, simple_vocabulary)))

mod = Module()


@mod.capture(rule="({user.vocabulary})")
def vocabulary(m) -> str:
    return m.vocabulary


@mod.capture(rule="(<user.vocabulary> | <word>)")
def word(m) -> str:
    try:
        return m.vocabulary
    except AttributeError:
        return actions.dictate.parse_words(m.word)[-1]


punctuation = set(".,-!?;:")


@mod.capture(rule="(<user.vocabulary> | <phrase>)+")
def text(m) -> str:
    #todo: use actions.dicate.parse_words for better dragon support once supported
    #print('we reached here')
   # words = str(m).split(' ')
   # i = 0
    #while i < len(words):
    #    words[i] = remove_dragon_junk(words[i])
    #    i += 1
#    return ' '.join(words)
    words = []
    result = ""
    for item in m:
        # print(m)
        if isinstance(item, grammar.vm.Phrase):
            words = words + actions.dictate.replace_words(
                actions.dictate.parse_words(item)
            )
        else:
            words = words + item.split(" ")

    for i, word in enumerate(words):
        if i > 0 and word not in punctuation and words[i - 1][-1] not in ("/-("):
            result += " "

        result += word
    return result


#capture to insert text with spaces
@mod.capture(rule='({user.vocabulary} | <phrase>)+')
def spaceText(m) -> str:
    words = str(m).split(' ')
    
    i = 0
    while i < len(words):
        words[i] = remove_dragon_junk(words[i])
        i += 1

    return (' '.join(words) + ' ')

mod.list("vocabulary", desc="user vocabulary")

ctx = Context()

# setup the word map too
ctx.settings["dictate.word_map"] = mapping_vocabulary
ctx.lists["user.vocabulary"] = mapping_vocabulary
