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
ntests = 2
cases = [[[0,1,0,0], 
          [1,1,1,0], 
          [0,1,0,0], 
          [1,1,0,0]],
         [[1,1,1,1], 
          [1,1,1,1], 
          [1,1,1,1], 
          [1,1,1,1]],
         [[0,1,0,1,0,1], 
          [0,1,1,1,1,1],
          [0,1,0,1,0,1],
          [0,1,0,1,0,1]],
         [[1,0]],
         [[1]],
         [[0,0,0,0,0,0], 
          [0,1,1,1,1,0],
          [0,1,1,1,1,0],
          [0,0,0,0,0,0]],
         [[0,1,0], 
          [1,1,1],
          [0,1,0],
          [1,1,1],
          [1,1,1],
          [0,1,0],
          [1,1,1],
          [1,1,0]]]

while len(cases) < ntests:
    R = random.randint(1, 10)
    C = random.randint(1, 10)
    
    kaart = []
    
    # automatic generator not yet implemented
    
    if kaart not in cases:
        cases.append(kaart)
    
cases = sorted(cases, key = lambda x: len(x)*len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"omtrek_eiland({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.omtrek_eiland(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)


