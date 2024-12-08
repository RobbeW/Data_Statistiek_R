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
snoepjes_soorten = ["zuur beertje", "kers", "colaflesje", "blauwe haai",
                    "groene kikker", "rode lippen", "zure worm", "dracula tanden",
                    "banaantje", "framboosje", "fruitella", "wilde aardbei"]
weights = [1,1,10,1,
           8,1,1,8,
           1,1,1,1]
ntests = 25

cases = [["zuur beertje", "zuur beertje", "kers", "kers", "colaflesje", "colaflesje"],
         ["zuur beertje", "zuur beertje", "kers", "colaflesje"],
         ["colaflesje", "colaflesje", "colaflesje", "colaflesje"],
         ['groene kikker', 'groene kikker', 'wilde aardbei', 'wilde aardbei', 'groene kikker', 'groene kikker']]

while len(cases) < ntests:
    e = random.randint(0,1)
    n = max(random.randint(10**e, 10**(e+1)), 2)
    if n % 2 != 0:
        n += 1
        
    snoepjes = random.choices(snoepjes_soorten, weights=weights, k = n)
    
    
    if snoepjes not in cases:
        cases.append(snoepjes)

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"snoep_eten({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.snoep_eten(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



