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
        for c in range(len(matrix[0])):
            el = matrix[r][c]
            txt += f"{el:>{dist}}"
            if c < len(matrix[0]) - 1:
                txt += ", "
        txt += "]"
        if r < len(matrix) - 1:
            txt += ",\n"
    txt += "])"
    return txt

# generate test data
ntests = 25
cases = [[[1, 2, 3, 4], 
          [5, 1, 2, 3],
          [9, 5, 1, 2]],
         [[1, 2, 3, 4], 
          [5, 1, 2, 3],
          [9, 4, 1, 2]],
         [[3, 3, 3, 3], 
          [3, 1, 3, 3],
          [3, 3, 3, 3]]]

while len(cases) < ntests:
    r, k =  [random.randint(1,10) for _ in range(2)]
    matrix = []
    for _ in range(r):
        row = [(-1)**random.randint(0,1) * random.randint(1,10) for _ in range(k)]
        matrix.append(row)
    
    
    
    # make it toeplitz
    for i in range(k):
        el = matrix[0][i]
        j = 1
        i += 1
        while j < r and i < k:
            matrix[j][i]  = el
            i+=1
            j+=1
    
    for j in range(r):
        el = matrix[j][0]
        i = 1
        j += 1
        while j < r and i < k:
            matrix[j][i]  = el
            i+=1
            j+=1   

    if random.randint(0,2) == 0:
        #randomnize some elements
        n = random.randint(1,r*k)
        for _ in range(n):
            i = random.randint(0,r-1)
            j = random.randint(0,k-1)
            matrix[i][j] = (-1)**random.randint(0,1) * random.randint(1,10) 
    
    if matrix not in cases:
        cases.append(matrix)

cases = sorted(cases, key = lambda x: len(x) * len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"is_toeplitz({test})"
    description_name = generate_expression("is_toeplitz", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.is_toeplitz(test)
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



