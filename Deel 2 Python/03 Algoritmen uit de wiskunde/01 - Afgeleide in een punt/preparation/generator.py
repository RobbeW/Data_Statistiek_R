import os
import sys
import importlib
import random
import ruamel.yaml
import subprocess

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

def makeF( script ): # turns a string into a function
    exec(script, globals())
    return f

module_name = 'solution'
file_path = os.path.join(solutiondir, 'solution.nl.py')
spec = importlib.util.spec_from_file_location(module_name, file_path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)

# generate test data

# generate test data
cases = []
cases.append( ['def f( x ) : return x - 2', 0])
#cases.append( ['def f( x ) : return x**3 - 2', 0] )
#cases.append( ['def f( x ) : return (x-2)**(1/3)-1', 0] )
#cases.append( ['def f( x ) : return 5 * (x - 2) * (x - 3) * (x - 4)', 0] )
#cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
#cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
#cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
    
# generate unit tests for functions
yamldata = []

# input, expression, statement or stdin?
input = 'stdin'
# output, stdout or return?
output = 'stdout'
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})

    # generate test expression
    expression_name = 'afgeleide( {}, {} )'.format( test[0], test[1] )
    result = module.afgeleide( test[0] )

    print(result)
    # setup for return expressions
    testcase = { "expression": expression_name, "return": result }
    yamldata[0]['contexts'][i]["testcases"].append( testcase)

write_yaml(yamldata)



