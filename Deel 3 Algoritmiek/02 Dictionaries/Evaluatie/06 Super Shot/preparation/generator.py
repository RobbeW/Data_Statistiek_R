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
ntests = 20
voornamen = [
    "Emma", "Noah", "Sophie", "Liam", "Mila", "Lucas", "Lotte", "Finn",
    "Sara", "Mats", "Tess", "Jasper", "Eva", "Tijn", "Lieke", "Olivier",
    "Fien", "Sam", "Julie", "Daan", "Maud", "Senne", "Amber", "Vince",
    "Elise", "Arthur", "Nina", "Vera", "Thomas", "Elin"
]

fractions = ["The Left", "S&D", "Greens/EFA", "Renew", "EPP", "ECR", "Patriots", "ESN", "NI"]

cases = [[("Kelly", 1), ("George", 2), ("Kelly", 1), ("John", 2), ("George", 1)],
         [("Kelly", 1), ("George", 2), ("Kelly", 1), ("John", 2), ("George", 1), ("Kelly", 1), ("John", 1)]]

while len(cases) < ntests:
    k = random.randint(2,10)
    spelers = random.sample(voornamen, k = k)
    games = []
    e = random.randint(0,1)
    n = random.randint(10**e, 10**(e+1))
    for _ in range(n):
        speler = random.choice(spelers)
        score = random.randint(1,3)
        games.append( (speler,score) )
    
    if games not in cases:
        cases.append(games)

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"winnaar({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.winnaar(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



