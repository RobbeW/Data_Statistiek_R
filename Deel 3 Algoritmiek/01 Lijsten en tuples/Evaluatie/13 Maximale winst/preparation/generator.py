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
ntests = 25
cases = [ (20, [7, 1, 5, 3, 6, 4]), (100, [7, 6, 5, 4, 3, 1]), (100, [1, 10, 1, 10]), (100, [1, 10, 10, 1]), (100, [14, 16, 2, 100])]
while len(cases) < ntests:
    e = random.randint(0, 1)
    n = random.randint(10**e, 10**(e+1) )
    
    startbedrag = random.randint(20,1000)
    koerswaarden = [random.randint(1, 1000) for _ in range(n)]
    case = (startbedrag, koerswaarden)
    
    if case not in cases:
        cases.append(case)
    

cases = sorted(cases, key = lambda x : len(x[1]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"maximale_winst({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.maximale_winst(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)


