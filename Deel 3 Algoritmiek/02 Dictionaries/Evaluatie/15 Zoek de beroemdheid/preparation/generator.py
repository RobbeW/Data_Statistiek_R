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
cases = [(3, [(1, 3), (2, 3)]),
         (2, [(1, 2)]),
         (3, [(1, 3), (2, 3), (3, 1)]),
         (5, [(1, 5), (2, 5), (3, 5), (4, 1)]),
         (5, [(1, 5), (2, 5), (3, 5), (4, 5), (5, 2)]),
         (1, [])]

ntests = 25

while len(cases) < ntests:
    e = random.randint(0,1)
    n = max(random.randint(10**e, 10**(e+1)), 3)
        
    flag = random.randint(0, 2) == 0
    lijst = []
    
    celeb = random.randint(1, n + 1)
    for i in range(1, n + 1):
        if i != celeb:
            templijst = []
            # alles bekijken met (i, ...)
            for j in range(1, n + 1):
                if j != celeb and i != j:
                    templijst.append((i, j))
            # maak een willekeurige selectie van deze templijst
            
            aantal = random.randint(1, len(templijst))
            
            templijst = random.sample(templijst, k = aantal)
            templijst.append( (i, celeb))

            lijst +=  templijst

    random.shuffle(lijst)

    if flag:
        # remove a random number of elements
        aantal = random.randint(1, len(lijst) // 2)
        for _ in range(aantal):
            i = random.randint(0, len(lijst) - 1 )
            lijst.remove(lijst[i])

    
    case = (n, lijst)
    
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: (len(x[1]), x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"zoek_beroemdheid({test[0]}, {test[1]})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.zoek_beroemdheid(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



