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
cases = [
    [5, 2, 4, 1, 7, 5],
    [1],
    [1, 3],
    [1, 1, 3, 3],
    [5, 5, 5, 5, 5],
    [1, 1, 1, 1, 1, 19],
    [7, 8, 4, 3, 2, 12]
]

while len(cases) < ntests:
    e = random.randint(0,2)
    n = random.randint(10**e, 10**(e+1))
    lijst = []
    
    for _ in range(n):
        lijst.append(random.randint(1,20))
    
    print(sum(lijst), len(lijst))
    
    if sum(lijst) % n != 0:
        aim = math.ceil( sum(lijst) / (n) )
        lijst.append( (n+1)*aim - sum(lijst) )
    
    if lijst not in cases:
        cases.append(lijst)
        print(sum(lijst) / len(lijst))

cases = sorted(cases, key = lambda x : len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"blokken({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.blokken(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



