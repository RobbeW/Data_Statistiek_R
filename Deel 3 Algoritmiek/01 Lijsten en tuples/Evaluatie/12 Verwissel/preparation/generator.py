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
ntests = 35
cases = [ ([6, 5, 3, 1, 8, 7, 2], 1), ([1, 2, 8, 7, 4, 3], 3), ([1, 2, 8, 7, 4, 3], 2), ([2, 1, 3, 4, 5], 1)]
while len(cases) < ntests:
    e = random.randint(0,1)
    n = random.randint(10**e,10**(e+1))
    n = max(n, 2)
    lijst = random.sample(range(2*n), k=n)
    flag = random.randint(0,4)
    if flag == 0:
        lijst = sorted(lijst)
    else:
        lijst = sorted(lijst, reverse=True)

    index = random.randint(0, n-1)
    case = (lijst, index)
    
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
    expression_name = f"verwissel({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.verwissel(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



