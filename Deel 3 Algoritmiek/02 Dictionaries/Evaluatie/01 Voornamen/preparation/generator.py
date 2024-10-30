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

babynamen = [
    "Olivia", "Emma", "Louise", "Lina", "Sofia", "Alice", "Eva", "Anna", "Mila", "Juliette",
    "Noah", "Arthur", "Liam", "Louis", "Jules", "Lucas", "Leo", "Oscar", "Victor", "Finn",
    "Elena", "Lena", "Amélie", "Billie", "Céleste", "Nora", "Camille", "Hugo", "Ruben", "Axel",
    "Ada", "Inaya", "Mona", "Lou", "Ayla", "Flore", "Sara", "Emma", "Simon", "Marie",
    "Mia", "César", "Aiden", "Ella", "Gust", "Renée", "Tuur", "Elisa", "Robin", "Emiel"
]


voornamen = {"Olivia": 154,
             "Emma": 132,
             "Noah": 132,
             "Arthur": 130,
             "Louise": 130,
             "Liam": 130}

cases = [voornamen]

voornamen = {"Julie" : 101,
             "Victorine": 101,
             "Tybert": 101}

cases.append(voornamen)

while len(cases) < ntests:
    n = random.randint(5,50)
    selectie = random.sample(babynamen, k = n)
    aantallen = random.sample(range(5,150),  k = math.ceil(math.sqrt(n)))
    dict = {}
    for name in selectie:
        dict[name] = random.choice(aantallen)
    
    if dict not in cases:
        cases.append(dict)
    

cases = sorted(cases, key = lambda x: len(x.keys()))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"omvormen({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.omvormen(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



