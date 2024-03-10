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
# generate test data
ntests= 20
cases = [(5,10), (102.0,112.2), (15.3,-15.3), (18.0,0.0), (8.0,4.0)]
while len(cases) < ntests:
    a = round(random.uniform(0,200), 1)
    q = round(random.uniform(-3,3))
    b = round(a * q, 1)
    cases.append((a,b))
    
# generate unit tests for functions
yamldata = []
yamldata.append( {'tab': 'Feedback', 'testcases': []})
# input, expression, statement or stdin?

input = 'stdin'
# output, stdout or return?
output = 'stdout'

for test in cases:
    # generate test expression
    # add input to input file
    stdin = '\n'.join(f'{line}' for line in test)

    # generate output to output file
    script = os.path.join(solutiondir, 'solution.nl.py')
    process= subprocess.run(
        ['python3', script],
        input=stdin,
        encoding='utf-8',
        capture_output=True
    )
    
    result_lines = process.stdout.split("\n")
    result_lines = [x for x in result_lines[1:]]
    outputtxt = ""
    for line in result_lines:
        if not(line.startswith( 'Geef' )):
            print(line)
            outputtxt += line + "\n"
    
    # setup for return expressions
    testcase = { input: stdin, output: outputtxt[:-1] }
    yamldata[0]['testcases'].append( testcase)

write_yaml(yamldata)