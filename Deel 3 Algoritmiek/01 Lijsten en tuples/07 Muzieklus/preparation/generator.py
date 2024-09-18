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
    [15, 0, -41, -15, 30, 42],
    [300, 450, 449, 450],
    [1, -3],
    [422, 115, -306, 76],
    [205, -18, 435, 83, 127, 235, -116, -112, 229, -388, -427, 442, -133, 9, -234, -451, -499, 152, -177]
]

while len(cases) < ntests:
    e = random.randint(0,2)
    n = random.randint(10**e, 10**(e+1))
    lijst = []
    
    for _ in range(n):
        lijst.append(random.randint(-500,500))
    
    if lijst not in cases:
        cases.append(lijst)
    
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
    expression_name = f"aantal({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.aantal(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



