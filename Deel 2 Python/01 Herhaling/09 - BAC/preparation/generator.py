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
cases = [(3,67,1.3,'V'),(3,85,1.3,'M') ,(0,67,0.5,'V')]
while len(cases) < ntests:
    sex = random.choice( ["M", "V"])
    n = random.randint(0,6)
    m = random.randint(50,100)
    t = round(random.uniform(0.5,4), 1)
    cases.append( (n, m, t, sex) )
    
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
            outputtxt += line
    
    # setup for return expressions
    testcase = { input: stdin, output: outputtxt }
    yamldata[0]['testcases'].append( testcase)

write_yaml(yamldata)