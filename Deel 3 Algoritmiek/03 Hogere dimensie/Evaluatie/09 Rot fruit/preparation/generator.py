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

def find_longest(matrix):
    longest = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            el = str(matrix[r][c])
            if len(el) > longest:
                longest = len(el)
    return longest

def generate_expression(name, matrix, add=None):
    # probably not the best method
    dist = find_longest(matrix)
    name_length = len(name)
    
    txt = f"{name}(["
    for r in range(len(matrix)):
        # insert leading spaces
        if r > 0:
            txt += f"{' ':>{name_length+2}}"
        txt += "["
        for c in range(len(matrix[0])):
            el = matrix[r][c]
            if isinstance(el, str):
                string_el = f"\"{el}\""
                txt += f"{string_el:>{dist}}"
            else:
                txt += f"{el:>{dist}}"
            if c < len(matrix[0]) - 1:
                txt += ", "
        txt += "]"
        if r < len(matrix) - 1:
            txt += ",\n"
    if add != None:
        txt += ", "
        for i in range(len(add)):
            el = add[i]
            txt += f"{el}"
            if i != len(add) - 1:
                txt += ", "
            
    txt += "])"
    return txt

def aantal_niet_rot(matrix):
    aantal = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            el = matrix[r][c]
            if el == 1:
                aantal += 1
    return aantal

# generate test data
ntests = 20
cases = [[[2,1,1],[1,1,0],[0,1,1]],
         [[2,1,1],[0,1,1],[1,0,1]],
         [[2,1,0],[1,0,0],[0,0,1]],
         [[0,2]]]

while len(cases) < ntests:
    n = random.randint(1, 25)
    m = random.randint(1, 25)
    mat = []
    for _ in range(n):
        row = [0] * m
        mat.append(row)
    
    # add fresh
    k = random.randint(n*m*8//10, n*m)
    while aantal_niet_rot(mat) != k:
        i = random.randint(0,n-1)
        j = random.randint(0,m-1)
        mat[i][j] = 1
    
    # make some rotten
    k = random.randint(1,5)
    for _ in range(k):
        i = random.randint(0,n-1)
        j = random.randint(0,m-1)
        mat[i][j] = 2
    
    if mat not in cases:
        cases.append(mat)
    
cases = sorted(cases, key = lambda x: len(x) * len(x[0]))

# generate unit tests for functions
yamldata = []
       
tabtitle = "Feedback rot_fruit"

yamldata.append( {'tab': tabtitle, 'contexts': []})
k = len(yamldata)

for i in range(len(cases)):
    test = cases[i]
    yamldata[k-1]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"rot_fruit({test})"
    description_name = generate_expression("rot_fruit", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.rot_fruit(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = {"expression": expression_name, 
                    "description": description,
                    "return" : result }
        yamldata[k-1]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e) 
        
tabtitle = "Feedback aantal_vers"

yamldata.append( {'tab': tabtitle, 'contexts': []})
k = len(yamldata)

for i in range(len(cases)):
    test = cases[i]
    yamldata[k-1]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"aantal_vers({test})"
    description_name = generate_expression("aantal_vers", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.aantal_vers(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = {"expression": expression_name, 
                    "description": description,
                    "return" : result }
        yamldata[k-1]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)   

tabtitle = "Feedback stap"

yamldata.append( {'tab': tabtitle, 'contexts': []})
k = len(yamldata)

for i in range(len(cases)):
    test = cases[i]
    yamldata[k-1]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"stap({test})"
    description_name = generate_expression("stap", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.stap(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = {"expression": expression_name, 
                    "description": description,
                    "return" : result }
        yamldata[k-1]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)   

write_yaml(yamldata)



