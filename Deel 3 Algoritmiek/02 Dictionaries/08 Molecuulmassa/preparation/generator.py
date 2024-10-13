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
ntests = 2


cases = [["Na", 1, "Cl", 1], ["C", 12, "H", 22, "O", 11],
         ["H", 2, "O", 1], ["C", 1, "H", 4],
         ["C", 2, "H", 5, "O", 1, "H", 1], ["K", 1, "Cl", 1],
         ["H", 2, "O", 1], ["O", 3], ["C", 1, "H", 1, "Cl", 3],
         ["C", 2, "H", 4, "O", 2],
         ["Si", 1, "O", 2], ["Ba", 1, "Ti", 1, "O", 3],
         ["Zn", 2, "P", 2,"O", 7]]

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"molecuulmassa({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.molecuulmassa(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



