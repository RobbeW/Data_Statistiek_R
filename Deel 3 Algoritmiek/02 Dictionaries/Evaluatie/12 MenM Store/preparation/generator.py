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

def shuffle(woord):
    woord_lijst = list(woord)
    L = random.sample(woord_lijst, len(woord_lijst))
    return ''.join(L)

# generate test data
kleuren_original = ["rood", "groen", "blauw", "geel", "oranje", "bruin", "kiezelgrijs", "intens roze", "wolkenwit", "lichtpaars", "crème", "smaragdgroen"]
weights = [12, 15, 23, 15, 23, 12, 1, 1, 1, 1, 1, 1]
ntests = 20

cases = [{"verpakking 1": ["rood", "rood", "geel", "oranje", "rood"],
          "verpakking 2": ["blauw", "groen", "groen", "geel"]}]

while len(cases) < ntests:
    e = random.randint(0,1)
    n = max(random.randint(10**e, 10**(e+1)), 2)
    verpakking = {}
    for i in range(n):
        key = f"verpakking {i + 1}"
        count = random.randint(20,26)
        kleuren = random.choices(kleuren_original, weights=weights, k = count)
        verpakking[key] = kleuren
    
    if verpakking not in cases:
        cases.append(verpakking)

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"kleuren_tellen({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.kleuren_tellen(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



