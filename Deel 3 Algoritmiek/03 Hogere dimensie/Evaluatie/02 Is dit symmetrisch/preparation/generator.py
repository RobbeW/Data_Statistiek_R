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

def construct_mat(n, symm = False):
    mat = []
    # First random matrix
    for _ in range(n):
        row =  [random.randint(-20,20) for _ in range(n)]
        mat.append(row)
    if symm:
        # Make it symmetrical
        for i in range(n):
            for j in range(i, n):
                mat[j][i] = mat[i][j]
    return mat
    

# generate test data
ntests = 30
cases = [ [[3, 0, 1], [0, 4, 5], [1, 5, 2]], [[3, 9, 1], [0, 4, 5], [1, 7, 2]], [[-5]] ]

while len(cases) < ntests:
    n = random.randint(2, 15)
    symmetric = random.randint(0,2) == 0
    mat = construct_mat(n, symm = symmetric)
    if mat not in cases:
        cases.append(mat)
    
cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"is_symmetrisch({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.is_symmetrisch(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)

