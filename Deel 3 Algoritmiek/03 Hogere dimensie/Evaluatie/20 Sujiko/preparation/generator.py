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
def find_longest(matrix):
    longest = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            el = str(matrix[r][c])
            if len(el) > longest:
                longest = len(el)
    return longest

def generate_expression_double(name, matrix, natrix):
    # probably not the best method
    dist = find_longest(matrix)
    dist2 = find_longest(natrix)
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
    txt += "],\n"
    txt += f"{' ':>{name_length+1}}["
    for r in range(len(natrix)):
        # insert leading spaces
        if r > 0:
            txt += f"{' ':>{name_length+2}}"
        txt += "["
        for c in range(len(natrix[0])):
            el = natrix[r][c]
            if isinstance(el, str):
                string_el = f"\"{el}\""
                txt += f"{string_el:>{dist}}"
            else:
                txt += f"{el:>{dist}}"
            if c < len(natrix[0]) - 1:
                txt += ", "
        txt += "]"
        if r < len(natrix) - 1:
            txt += ",\n"
            
    txt += "])"
    return txt

# generate test data
ntests = 20
cases = [([[4, 7, 8],
            [5, 1, 2],
            [6, 3, 9]],
           [[17, 18],
            [15, 15]]),
         ([[4, 1, 8],
            [5, 7, 2],
            [6, 3, 9]],
           [[17, 18],
            [15, 15]])
        ]


while len(cases) < ntests:
    R = random.randint(3, 50)
    C = random.randint(3, 30)
    

    nums = list(range(R*C))
    random.shuffle(nums)
    
    mat = []
    for r in range(R):
        rij = []
        for c in range(C):
            element = nums[C*r + c] + 1
            rij.append(element)
        mat.append(rij)
    
    controle = []
    for r in range(R-1):
        rij = []
        for c in range(C-1):
            element = mat[r][c] + mat[r+1][c] + mat[r][c+1] + mat[r+1][c+1]
            rij.append(element)
        controle.append(rij)
    
    
    if random.randint(0,1) == 1: #switch an item
        r1, r2 = [ random.randint(0, R-1) for _ in range(2)]
        c1, c2 = [ random.randint(0, C-1) for _ in range(2)]

        el = mat[r1][c1]
        mat[r1][c2] = mat[r2][c2]
        mat[r2][c2] = el
        
    case = (mat, controle)
        
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: len(x[0])*len(x[0][0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"sujiko({test[0]}, {test[1]})"
    description_name = generate_expression_double("sujiko", test[0], test[1])
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.sujiko(test[0], test[1])
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



