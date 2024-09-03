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
def add_col(matrix):
    n = len(matrix[0])
    for i in range(n):
        matrix[i].append(sum(matrix[i]) % 2)

def add_row(matrix):
    n = len(matrix[0])
    n_rows = len(matrix)
    row = []
    
    for c in range(n):
        som = 0
        for r in range(n_rows):
            som += matrix[r][c]
    
        row.append(som % 2)
    matrix.append(row)

ntests = 20
cases = [ ]

while len(cases) < ntests:
    n = random.randint(1,20)

    m = []
    for i in range(n):
        row = random.choices([0,1], k = n)
        m.append(row)
        
    add_col(m)
    add_row(m)
    
    r = random.randint(0, n)
    c = random.randint(0, n)

    m[r][c] = (m[r][c] + 1) % 2
    cases.append(m )


# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"detecteer({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.detecteer(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



