import os
import importlib.util
import random
import ruamel.yaml
import contextlib, io

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
    ([0, 1, 1, 0, 0], [1, 0, 0, 1, 1]),
    ([1, 0, 1, 1, 0], [1, 0, 0, 1, 0])
]

while len(cases) < ntests:
    e = random.randint(0, 2)
    n = random.randint(10**e, 10**(e+1))
    
    connector1 = [random.randint(0,1) for _ in range(n)]
    connector2 = [(1 - connector1[i]) for i in range(n)]
    
    print(connector2)
    if random.randint(0,1) == 0: #change some values
        N = random.randint(1,n)
        for _ in range(N):
            i = random.randint(0,n-1)
            connector2[i] = 1 - connector2[i]
    
    case = (connector1, connector2)
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x : len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"controle({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.controle(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



