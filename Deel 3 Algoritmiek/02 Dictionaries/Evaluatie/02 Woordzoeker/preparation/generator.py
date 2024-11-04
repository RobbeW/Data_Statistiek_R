import os
import importlib.util
import random
import ruamel.yaml
import contextlib, io
import math
yaml = ruamel.yaml.YAML()


# set fixed seed for generating test cases
random.seed(12345678)

# locate evaldir
evaldir = os.path.join('..', 'evaluation')
if not os.path.exists(evaldir):
    os.makedirs(evaldir)

# locate solutiondir
solutiondir = os.path.join('..', 'solution')
if not os.path.exists(solutiondir):
    os.makedirs(solutiondir)

def write_yaml( data:list ):
    """ A function to write YAML file"""
    with open(os.path.join('..', 'evaluation', 'tests.yaml'), 'w', encoding='utf-8') as f:
        yaml.dump(data, f)

module_name = 'solution'
file_path = os.path.join(solutiondir, 'solution.nl.py')
spec = importlib.util.spec_from_file_location(module_name, file_path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

# generate test data
ntests = 25
cases = []

case= (["B", "B", "E", "E", "U", "W"], ["EEUW", "WEB", "ROOS", "MAAN"])

cases.append(case)

case= (["B", "E", "W", "G"], ["BEWEEG", "BOOG", "HOND", "DAK"])

cases.append(case)

woorden = [
    "APPEL", "BOMEN", "KATER", "FIETS", "STOEL", "LAMPEN", "KAMER", "PLANT",
    "VOGEL", "REGEN", "MAAN", "WATER", "ZOMER", "BLOEM", "GROOT", "KLEIN",
    "KLEUR", "HOND", "KATTEN", "PAARS", "SCHAAP", "STEEN", "STRAND", "HUISJE",
    "DROOM", "LICHT", "VLOER", "GLAZEN", "VRIEND", "TUINEN", "KAARS", "STOEL",
    "BEKER", "SPEEL", "KLANT", "HAPJE", "BROOD", "GEEL", "KOEKJE", "SNOEP",
    "BOEK", "WEKEN", "KERST", "BOMEN", "BLOES", "VARKEN", "KLOK",
    "VUUR", "DORP"
]

while len(cases) < ntests:
    n = random.randint(1,15)
    gekozen_woorden = random.sample(woorden, k = n)
    dict = {}
    for woord in gekozen_woorden:
        tabel = {}
        for letter in woord:
            if letter in tabel:
                tabel[letter] += 1
            else:
                tabel[letter] = 1
        
        for letter, aantal in tabel.items():
            if letter in dict:
                dict[letter] = max(aantal, dict[letter])
            else:
                dict[letter] = aantal
    
    
    letterlijst = []
    for letter, aantal in dict.items():
        T = random.randint(0,aantal*3)
        for _ in range(math.ceil(T/3)):
            letterlijst.append(letter)
    
    lijst = random.sample(letterlijst, k = len(letterlijst))
    
    case = (lijst, gekozen_woorden)
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"aantal_woorden({test[0]}, {test[1]})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.aantal_woorden(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



