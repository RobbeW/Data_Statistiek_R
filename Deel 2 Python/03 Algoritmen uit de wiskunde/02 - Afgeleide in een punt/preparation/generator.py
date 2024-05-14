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
cases.append( ['def f( x ) : return x**3 - 2', 1] )
cases.append( ['def f( x ) : return math.sin(x)', round(math.pi, 9), 'import math'])
cases.append( ['def f( x ) : return (1+x**2+(1-x**2)*math.log10(x))/((1+x**2)**2)', round(1/3, 9), 'import math'])
cases.append( ['def f( x ) : return math.sin(x)', 0, 'import math'])
cases.append( ['def f( x ) : return math.sin(x)', round(math.pi/2, 9), 'import math'])
cases.append( ['def f( x ) : return x - 2', 5])
cases.append( ['def f( x ) : return x - 2', -5])
cases.append( ['def f( x ) : return x**3 - 2', 0] )
cases.append( ['def f( x ) : return x**3 - 2', 2] )
cases.append( ['def f( x ) : return x**(1/3)', 1] )
cases.append( ['def f( x ) : return x**(1/3)', 0] )
cases.append( ['def f( x ) : return x/abs(x)*abs(x)**(1/3)', -10] )
cases.append( ['def f( x ) : return 5 * (x - 2) * (x - 3) * (x - 4)', 0] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
cases.append( ['def f( x ) : return -5 / (x**2 + 1) + 2', 0] )
cases.append( ['def f( x ) : return ((x-1)**2)**(1/5)', 0] )
cases.append( ['def f( x ) : return -1*x**(1/3)', 0] )
cases.append( ['def f( x ) : return (x-1)**(2/5)', 1] )
cases.append( ['def f( x ) : return (x+3)**(1/2)', -3] )



    
# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
    
    if len(test) == 3: # laatste import toevoegen
        stmt = {"statement": {"python": test[2]}}
        yamldata[0]['contexts'][i]["testcases"].append( stmt )
    
    # functie definitie toevoegne als python statement
    stmt = {"statement": {"python": test[0]}}
    yamldata[0]['contexts'][i]["testcases"].append( stmt )
    
    # generate test expression
    expression_name = 'afgeleide( {}, f )'.format( test[1] )
    
    try:
        f = makeF()
        
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.afgeleide( test[1],f )
        output = outputF.getvalue()

        print(output)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return": result, "stdout" : output }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



