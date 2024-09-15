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
    ["A", "B", "C", "B", "A"],
    [10, 20, 20, 10, 20],
    [True, False, True]
]

choicesBoolean = [True, False]
choicesAlph = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

while len(cases) < ntests:
    e = random.randint(0,1)
    n = random.randint(10**e, 10**(e+1))
    type = random.randint(0,2)
    if type == 0:
        if random.randint(0,1):
            case = random.choices(choicesBoolean, k = n)
        else:
            case = random.choices(choicesBoolean, k = n // 2)
            test = random.randint(0,1) * [random.choice(choicesBoolean)]
            case = case + test + case[::-1]
    elif type == 1:
        if random.randint(0,1):
            case = [random.randint(0,50) for _ in range(n)]
        else:
            case = [random.randint(0,50) for _ in range(n//2)]
            test = random.randint(0,1) * [random.randint(0,50)]
            case = case + test + case[::-1]
    else:
        if random.randint(0,1):
            case = random.choices(choicesAlph, k = n)
        else:
            case = random.choices(choicesAlph, k = n // 2)
            test = random.randint(0,1) * [random.choice(choicesAlph)]
            case = case + test + case[::-1]
    
    if case not in cases:
        cases.append(case)
    
cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]

    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"is_palindroom({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.is_palindroom(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



