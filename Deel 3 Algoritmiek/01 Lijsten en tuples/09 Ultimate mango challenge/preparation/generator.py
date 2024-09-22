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
ntests = 30
cases = [
    (5, [1, 3, 3], [1, 2, 3]),
    (6, [1, 2, 3], [1, 3, 2]),
    (6, [3, 3, 3], [2, 2, 2])
]


while len(cases) < ntests:
    n = random.randint(1, 10)
    
    to_eat = [random.randint(1,9) for _ in range(n)]
    
    maxim = []
    if random.randint(0,5) != 2:
        for i in range(len(to_eat)):
            val = to_eat[i]
            maxim.append(random.randint(val, 9))
    else:
        for i in range(len(to_eat)):
            val = to_eat[i]
            if random.randint(0,1) == 0:
                new = random.randint(val, 9)
            else:
                new = random.randint(1, 9)
            maxim.append(new)
            
    if random.randint(0,5) != 0:
        L = min(sum(to_eat), 30)
    else:
        L = random.randint(0, 30)
    
    case = (L, maxim, to_eat)
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
    expression_name = f"mango({test[0]}, {test[1]}, {test[2]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.mango(test[0], test[1], test[2])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



