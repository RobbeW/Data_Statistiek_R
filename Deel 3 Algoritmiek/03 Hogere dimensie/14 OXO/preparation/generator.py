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

def oxo_check(rooster):
    xwint = 0
    owint = 0
    for r in range(3):
        if rooster[r] == ["X", "X", "X"]:
            xwint +=1
        elif rooster[r] == ["O", "O", "O"]:
            owint += 1
        if rooster[0][r] == rooster[1][r] == rooster[2][r] == "X":
            xwint +=1
        if rooster[0][r] == rooster[1][r] == rooster[2][r] == "O":
            owint += 1
        
    if rooster[0][0] == rooster[1][1] == rooster[2][2] == "X":
        xwint +=1
    elif rooster[0][0] == rooster[1][1] == rooster[2][2] == "O":
        owint +=1
        
    if rooster[2][0] == rooster[1][1] == rooster[0][2] == "X":
        xwint +=1
    elif rooster[2][0] == rooster[1][1] == rooster[0][2] == "O":
        owint +=1
           
    return xwint > 0 or owint > 0


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
    txt += "])"
    return txt

# generate test data
ntests = 25
cases = [[["X", " ", " "], [" ", "X", " "], ["O", "O", "X"]],
         [["X", "X", "O"], ["O", "O", "X"], ["X", "O", "X"]],
         [["X", " ", "O"], ["X", "O", " "], ["O", " ", "X"]]]

while len(cases) < ntests:
    matrix = []
    for _ in range(3):
        matrix.append( [" "] * 3)
    
    nmoves = random.randint(3, 4)
    for _ in range(nmoves):
        
        i, j = [random.randint(0, 2) for _ in range(2)]
        while matrix[i][j] != " ":
            i, j = [random.randint(0, 2) for _ in range(2)]
        matrix[i][j] = "X"
        
        flag = oxo_check(matrix)
        if flag:
            break
        
        i, j = [random.randint(0, 2) for _ in range(2)]
        while matrix[i][j] != " ":
            i, j = [random.randint(0, 2) for _ in range(2)]
        matrix[i][j] = "O"
        
        flag = oxo_check(matrix)
        if flag:
            break
    
    flag = oxo_check(matrix)
    if not flag:
        i, j = [random.randint(0, 2) for _ in range(2)]
        while matrix[i][j] != " ":
            i, j = [random.randint(0, 2) for _ in range(2)]
        matrix[i][j] = "X"
        
        
    if matrix not in cases:
        cases.append(matrix)

cases = sorted(cases, key = lambda x: len(x)*len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"oxo({test})"
    description_name = generate_expression("oxo", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.oxo(test)
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



