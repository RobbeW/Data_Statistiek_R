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
cases = [ [[3, 0, 1], [0, 4, 5], [0, 1, 0]], [[-5]], [[9, 0, 1, 5], [0, 4, 5, 8], [0, -1, 0, 10]] ]

while len(cases) < ntests:
    r = random.randint(1, 15)
    c = random.randint(1, 15)
    mat = []
    maximum = -50
    for _ in range(r):
        row =  [random.randint(-40,40) for _ in range(c)]
        if max(row) > maximum:
            maximum = max(row)
        mat.append(row)
    
    # choose a largest number
    rM = random.randint(0, r - 1)
    cM = random.randint(0, c - 1)
    mat[rM][cM] = maximum + 1
    
    if mat not in cases:
        cases.append(mat)
    
cases = sorted(cases, key = lambda x: len(x) * len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"index_grootste_waarde({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.index_grootste_waarde(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)


