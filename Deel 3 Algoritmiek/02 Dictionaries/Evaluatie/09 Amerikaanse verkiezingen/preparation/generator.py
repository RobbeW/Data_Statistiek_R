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
staten = {
    "Alabama": 9, "Alaska": 3, "Arizona": 11, "Arkansas": 6, "California": 55, "Colorado": 9, "Connecticut": 7, "Delaware": 3, "District of Columbia": 3,
    "Florida": 29, "Georgia": 16, "Hawaii": 4, "Idaho": 4, "Illinois": 20, "Indiana": 11, "Iowa": 6, "Kansas": 6, "Kentucky": 8, "Louisiana": 8, 
    "Maine": 4, "Maryland": 10, "Massachusetts": 11, "Michigan": 16, "Minnesota": 10, "Mississippi": 6, "Missouri": 10, "Montana": 3, "Nebraska": 5, 
    "Nevada": 6, "New Hampshire": 4, "New Jersey": 14, "New Mexico": 5, "New York": 29, "North Carolina": 15, "North Dakota": 3, "Ohio": 18, 
    "Oklahoma": 7, "Oregon": 7, "Pennsylvania": 20, "Rhode Island": 4, "South Carolina": 9, "South Dakota": 3, "Tennessee": 11, "Texas": 38, 
    "Utah": 6, "Vermont": 3, "Virginia": 13,"Washington": 12, "West Virginia": 5, "Wisconsin": 10, "Wyoming": 3
}
candidates = ["Robert Kennedy", "Jill Stein", "Chase Oliver"]

ntests = 20

cases = []

while len(cases) < ntests:
    case = {}
    for staat in staten:
        cand = random.sample(candidates, k = random.randint(1,3))
        
        cand = ["Kamela Harris", "Donald Trump"] + cand
        cand = random.sample(cand, k = len(cand))
        res = ["verliest"] * len(cand)

        flag = True
        i = 0
        while flag:
            if cand[i] in ["Kamela Harris", "Donald Trump"]:
                res[i] = "wint"
                flag = False
            i+=1
        
        list = []
        for i in range(len(cand)):
            list.append(cand[i])
            list.append(res[i])
                
        case[staat] = list
    
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
    expression_name = f"president({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.president(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



