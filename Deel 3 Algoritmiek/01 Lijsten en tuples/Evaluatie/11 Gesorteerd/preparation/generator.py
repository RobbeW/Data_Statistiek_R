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
cases = [ [5, 7, 9, 11, 12, 13, 20], [5, 7, 11, 9, 12, 13, 20], [20, 13, 12, 11, 9, 7, 5], [20, 12, 13, 11, 9, 7, 5], [1,3,3]]
while len(cases) < ntests:
    e = random.randint(0,2)
    n = random.randint(10**e,10**(e+1))
    n = max(n, 2)
    lijst = random.sample(range(2*n), k=n)
    flag = random.randint(0,1)
    if flag == 0:
        lijst = sorted(lijst)
    else:
        lijst = sorted(lijst, reverse=True)

    if random.randint(0, 1) == 1:
        # lijst verstoren
        g1, g2 = random.sample(lijst, k=2)
        i1 = lijst.index(g1)
        i2 = lijst.index(g2)

        lijst[i1] = g2
        lijst[i2] = g1
    
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
    expression_name = f"gesorteerd({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.gesorteerd(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



