import os
import sys
import importlib
import random
import ruamel.yaml
import subprocess

yaml = ruamel.yaml.YAML()
import math

import contextlib, io



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

def makeF(): # some weird function
    script = test[0]
    exec(script, globals())
    return f

module_name = 'solution'
file_path = os.path.join(solutiondir, 'solution.nl.py')
spec = importlib.util.spec_from_file_location(module_name, file_path)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


# generate test data
cases = []
cases.append( ['def f( x ) : return x**3 - 2', 1, 0.01] )
cases.append( ['def f( x ) : return math.sin(x)', round(math.pi, 9), 0.001, 'import math'] )
cases.append( ['def f( x ) : return (1+x**2+(1-x**2)*math.log10(x))/((1+x**2)**2)', round(1/3, 9), 0.001, 'import math'] )
cases.append( ['def f( x ) : return math.sin(x)', 0, 0.001, 'import math'] )
cases.append( ['def f( x ) : return math.sin(x)', round(math.pi/2, 9), 0.001, 'import math'] )
cases.append( ['def f( x ) : return x - 2', 5, 0.0001] )
cases.append( ['def f( x ) : return x - 2', -5, 0.0001] )
cases.append( ['def f( x ) : return x**3 - 2', 0, 0.0001] )
cases.append( ['def f( x ) : return x**3 - 2', 2, 0.0001] )
cases.append( ['def f( x ) : return x**(1/3)', 1, 0.0001] )
cases.append( ['def f( x ) : return x**(1/3)', 0, 0.0001] )
cases.append( ['def f( x ) : return x**3 - 2', 1, 0.0001] )
cases.append( ['def f( x ) : return x/abs(x)*abs(x)**(1/3)', -10, 0.0001] )
cases.append( ['def f( x ) : return 5 * (x - 2) * (x - 3) * (x - 4)', 0, 0.0001] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0, 0.0001] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0, 0.0001] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0, 0.0001] )
cases.append( ['def f( x ) : return ((x-1)**2)**(1/5)', 0, 0.0001] )
cases.append( ['def f( x ) : return -1*x**(1/3)', 0, 0.0001] )
cases.append( ['def f( x ) : return (x+3)**(1/2)', -3, 0.0001] )
cases.append( ['def f( x ) : return ((x-1)**2)**(1/5)', 1, 0.0001] )

    
# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
    
    if len(test) == 4: # laatste import toevoegen
        stmt = {"statement": {"python": test[3]}}
        yamldata[0]['contexts'][i]["testcases"].append( stmt )
    
    # functie definitie toevoegne als python statement
    stmt = {"statement": {"python": test[0]}}
    yamldata[0]['contexts'][i]["testcases"].append( stmt )
    
    # generate test expression
    expression_name = 'afgeleide( {}, f, {} )'.format( test[1], test[2] )
    
    try:
        f = makeF()
        
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.afgeleide( test[1],f, test[2] )
        output = outputF.getvalue()

        print(output)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return": result, "stdout" : output }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)
