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
cases = [(15, [(4, 10), (1, 2), (2, 2), (1, 1), (12, 4)]),
         (4, [(3,5), (2,3)])]

while len(cases) < ntests:
    max_weight = random.randint(10, 100)
    lijst = []
    n = random.randint(4, 10)
    for _ in range(n):
        w = random.randint(1,max_weight // (n + 1))
        w_low = max(1, w // 2)
        w_high = 2 * w
        c = random.randint(w_low, w_high)
        if (w,c) not in lijst:
            lijst.append( (w, c))
    
    lijst = sorted(lijst, key=lambda x: (x[1]/x[0], x[0]),  reverse=True)

    case = (max_weight, lijst)
    if case not in cases:
        cases.append(case)

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"knapsack({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.knapsack(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



