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
ntests = 25
cases = []

case= ["Donald Trump", "Joe Biden", "Donald Trump", "Joe Biden", "Joe Biden"]
cases.append(case)

case = ["Donald Trump", "Joe Biden", "Donald Trump", "Joe Biden", "Donald Trump", "Joe Biden"]
cases.append(case)

candidates = [
    ("Joe Biden", "Donald Trump"),
    ("Nikki Haley", "Donald Trump", "Ron DeSantis", "Chris Christie", "Vivek Ramaswamy", "Mike Pence"),
    ("Barack Obama", "John McCain"),
    ("Hillary Clinton", "Bernie Sanders", "Martin O'Malley"),
    ("George W. Bush", "Al Gore", "Ralph Nader"),
    ("Bill Clinton", "Bob Dole"),
    ("Ronald Reagan", "Jimmy Carter", "John Anderson"),
    ("Richard Nixon", "Hubert Humphrey"),
    ("John F. Kennedy", "Richard Nixon", "Harry F. Byrd"),
    ("Franklin D. Roosevelt", "Wendell Willkie"),
    ("Donald Trump", "Robert F. Kennedy Jr.", "Kamala Harris")
]



while len(cases) < ntests:
    c = random.randint(0,len(candidates)-1)
    e = random.randint(0,2)
    n = random.randint(10**e, 10**(e+1))
    n = max(n, 2)
    
    if random.randint(0,3) == 0:
        candidate = candidates[c]
        temp = []
        for i in range(len(candidate)):
            name = candidate[i]
            temp += [name] * (n // len(candidate))
        lijst = random.sample(temp, k = len(temp))
    else:
        lijst = random.choices(candidates[c], k = n)
    
    if lijst not in cases:
        cases.append(lijst)

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"hertelling({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.hertelling(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



