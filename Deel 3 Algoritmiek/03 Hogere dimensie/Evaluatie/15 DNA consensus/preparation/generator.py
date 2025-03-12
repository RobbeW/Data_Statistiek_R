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


# generate test data
ntests = 15
cases = [[["A", "G", "C", "A", "T"], 
          ["A", "G", "A", "C", "T"], 
          ["G", "G", "A", "A", "T"]],
         [["G", "G", "C", "A", "T"], 
          ["A", "G", "A", "C", "T"], 
          ["A", "G", "A", "A", "T"]],
         [["A", "G", "A", "A", "T"], 
          ["A", "G", "C", "C", "T"], 
          ["G", "G", "A", "A", "T"]],
         [["A", "G", "C", "A", "T"], 
          ["A", "G", "A", "A", "T"], 
          ["G", "G", "A", "C", "T"]],
         [["A", "G", "C", "C", "T"], 
          ["A", "G", "A", "A", "T"], 
          ["G", "G", "A", "A", "T"]],
         [["G", "C", "A", "T", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
          ["G", "C", "A", "A", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
          ["G", "C", "T", "A", "A", "T", "G", "G", "G", "T", "G", "T", "C", "C", "A"],
          ["G", "C", "A", "A", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
          ["G", "C", "A", "A", "A", "T", "C", "G", "G", "T", "G", "A", "G", "C", "A"]]]

nucleos = "ATGC"
while len(cases) < ntests:
    count = random.randint(3,10)
    length = random.randint(4,20)
    # initial string
    mat = []
    first = random.choices(nucleos, k = length)
    mat.append(first)
    
    for _ in range(count):
        new = []
        for char in first:
            if random.randint(0,4) == 0:
                char = random.choice(nucleos)
            new.append(char)
        mat.append(new)
    
    case = mat
        
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: len(x)*len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"consensus({test})"
    description_name = generate_expression("consensus", test )
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.consensus(test)
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



