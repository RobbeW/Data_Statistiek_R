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
fractions = ["The Left", "S&D", "Greens/EFA", "Renew", "EPP", "ECR", "Patriots", "ESN", "NI"]

cases = []

case = ({"The Left": 46, "S&D": 136, "Greens/EFA": 53, "Renew": 77, "EPP": 188, "ECR": 78, "Patriots": 84, "ESN": 25, "NI": 32}, ["EPP", "S&D", "ECR"])
cases.append(case)
case = ({"The Left": 46, "S&D": 136, "Greens/EFA": 53, "Renew": 77, "EPP": 188, "ECR": 78, "Patriots": 84, "ESN": 25, "NI": 32}, ["The Left", "S&D"])
cases.append(case)
case = ({"The Left": 47, "S&D": 154, "Greens/EFA": 43, "Renew": 51, "EPP": 206, "ECR": 78, "Patriots": 84, "ESN": 25, "NI": 32}, ["EPP", "S&D"])
cases.append(case)
case = ({"The Left": 48, "S&D": 153, "Greens/EFA": 44, "Renew": 51, "EPP": 206, "ECR": 78, "Patriots": 84, "ESN": 25, "NI": 32}, ["EPP", "S&D"])
cases.append(case)
case = ({"The Left": 46, "S&D": 155, "Greens/EFA": 43, "Renew": 51, "EPP": 206, "ECR": 78, "Patriots": 84, "ESN": 25, "NI": 32}, ["EPP", "S&D"])
cases.append(case)

while len(cases) < ntests:
    n = len(fractions)
    total_seats = random.randint(700,750)
    rand_n = [ random.random() for _ in range(n) ]
    seats = [ math.floor(i * total_seats / sum(rand_n)) for i in rand_n ] 
    missing = total_seats - sum(seats)
    for _ in range(missing):
        seats[random.randint(0,n-1)] += 1
    
    div = {}
    for i in range(len(fractions)):
        frac = fractions[i]
        div[frac] = seats[i]
    coalition = random.sample(fractions[0:-1], k = random.randint(2,5))
    
    case = (div, coalition)
    if case not in cases:
        print(total_seats)
        cases.append(case)


cases = sorted(cases, key = lambda x: sum(x[0].values()))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"voorspelling({test[0]}, {test[1]})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.voorspelling(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



