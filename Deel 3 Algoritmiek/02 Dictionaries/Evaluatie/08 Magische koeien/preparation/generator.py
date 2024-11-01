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
ntests = 30

cases = [(1, [1, 1, 1, 1, 1], 0), (1, [1, 1, 1, 1, 1], 1), (1, [1, 1, 1, 1, 1], 2), (1, [1, 1, 1, 1, 1], 3),
         (2, [1, 2, 1, 2, 1], 0), (2, [1, 2, 1, 2, 1], 1), (2, [1, 2, 1, 2, 1], 2)]

while len(cases) < ntests:
    C = random.randint(1, 1000)
    e = random.randint(0, 1)
    k = random.randint(10**e, 10**(e+1))
    k = max(k, 3)
    weilanden = [ random.randint(1,C) for _ in range(random.randint(3,k))]
    e = random.randint(0,1)
    dag = random.randint(10**e, 10**(e+1))
    
    case = (C, weilanden, dag)
    
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: len(x[1]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"koeien({test[0]}, {test[1]}, {test[2]})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.koeien(test[0], test[1], test[2])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



