import os
scripts = []
pythonScripts= []
for root,d_names,f_names in os.walk(os.getcwd()):
	for f in f_names:
                name = os.path.join(root, f)
                if (name.split('/')[-1].split('.')[-1] == "talon" and
                        "." in name):
                    scripts.append(name)
                elif (name.split('/')[-1].split('.')[-1] == "py"): 
                    pythonScripts.append(name)
                    

#print("%s" %scripts)
#print("%s" %pythonScripts)
#print("fname = %s" %fname)
class ScriptFile:
    actionMap = {}
    def __init__(self, filepath = None):
        self.context = Context()
        self.actions = list() 
        self.commands = list() 
        if filepath:
            self.parseFile(filepath) 
    def parseFile(self, filepath):
        with open(filepath) as f:
            print("successfully opened file")
            for line in f:

                if line.strip() == '-':
                    print("we found the hyphen")
                    break
                elif line.startswith("os"):
                    self.context.os.append(self.getFunction(line))
                elif line.startswith("tag"):
                    self.context.tags.append(self.getFunction(line))
                elif line.startswith("mode"):
                    self.context.modes.append(self.getFunction(line))
                elif line.startswith("app"):
                    self.context.app.append(self.getFunction(line))
    def getFunction(self, line):
        index = line.index(":")
        return line[index:].lstrip()

class Context:
    def __init__(self):
        self.os = []
        self.tags = [] 
        self.modes = []
        self.app = []
        self.other = {}
class Action:
    def __init__(self):
        self.command = ""
        self.action = ""
        self.comment = ""
class Command:
    def __init__(self):
       self.command = "" 
       self.functions = []
       self.comment = ""
    
print(scripts[1])
x = ScriptFile(scripts[1])
print(x.context.os)
