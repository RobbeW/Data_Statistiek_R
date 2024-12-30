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

def generate_expression(name, matrix):
    # probably not the best method
    dist = find_longest(matrix)
    name_length = len(name)
    
    txt = f"{name}(["
    for r in range(len(matrix)):
        # insert leading spaces
        if r > 0:
            txt += f"{' ':>{name_length+2}}"
        txt += "["
        for c in range(len(matrix[r])):
            el = matrix[r][c]
            if isinstance(el, str):
                string_el = f"\"{el}\""
                txt += f"{string_el:>{dist}}"
            else:
                txt += f"{el:>{dist}}"
            if c < len(matrix[r]) - 1:
                txt += ", "
        txt += "]"
        if r < len(matrix) - 1:
            txt += ",\n"
    txt += "])"
    return txt

# generate test data
ntests = 20
cases = [[[255],
          [  0,  0],
          [ 54,  0, 67],
          [  0,  0,  0,  0],
          [ 10,  0, 18,  0, 13],
          [  0,  0,  0,  0,  0,  0],
          [  3,  0,  3,  0,  5,  0,  2],
          [  0,  0,  0,  0,  0,  0,  0,  0],
          [  2,  0,  1,  0,  2,  0,  1,  0,  1]]]

while len(cases) < ntests:
    r, c = [random.randint(1, 10) for _ in range(2)]
    matrix = []

    k = random.randint(1,5)
    k = 2 * k + 1 # make it uneven
    for i in range(k - 1):
        rij = [0] * (i + 1)
        matrix.append(rij)
    rij = [random.randint(0,5) for _ in range(k)]
    matrix.append(rij)
    
    # fill in the values
    for r in range(k - 2, -1, -1):
        for c in range(len(matrix[r])):
            matrix[r][c] = matrix[r + 1][c] + matrix[r + 1][c + 1]
    
    # hide the odd values
    for r in range(k):
        for c in range(len(matrix[r])):
            if r % 2 == 1:
                matrix[r][c] = 0
            elif c % 2 == 1:
                matrix[r][c] = 0

        
    if matrix not in cases:
        cases.append(matrix)

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"bakstenen({test})"
    description_name = generate_expression("bakstenen", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.bakstenen(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = {"expression": expression_name, 
                    "description": description,
                    "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



