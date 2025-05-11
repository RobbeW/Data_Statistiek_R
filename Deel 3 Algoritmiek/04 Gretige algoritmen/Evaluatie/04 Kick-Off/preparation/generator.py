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


def generate_matrix(nrow, ncol):

    mat = []
    for _ in range(nrows):
        row = [random.randint(-10,10) for _ in range(ncols)]
        mat.append(row)

    for r in range(nrow-1):
        for c in range(ncol-1):
            if mat[r+1][c] == mat[r][c+1]:
                mat[r+1][c] = mat[r+1][c] + (-1)**(random.randint(0,1))
    
    return mat


def fix_notes(notes):
    n = len(notes)
    
    while sum(notes) % n != 0:
        i = random.randint(0, len(notes)-1)
        notes[i] += 1
    
    return notes
    

# generate test data
ntests = 25
cases = [([150000, 100000, 160000, 100000, 180000], [190000, 170000, 140000, 160000]),
         ([180000, 185000, 199999, 100000], [199999, 180000, 170000, 120000]),
         ([199999, 180000, 170001], [199999, 170000, 180000]),
         ([100000], [100000]),
         ([100000, 100000], [199999]),
         ([199999], [199999]),
         ([100001], [100000]),
         ([199999], [100000])
         ]

while len(cases) < ntests:
    e_n, e_m = [random.randint(0, 3) for _ in range(2)]
    
    n = random.randint(10**e_n, 10**(e_n+1))
    m = random.randint(10**e_m, 10**(e_m+1))
        
    study = [random.randint(100000, 199999) for _ in range(n)]
    quit_times = [random.randint(100000, 199999) for _ in range(m)]
    
    case = (study, quit_times)
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key=lambda x: len(x[0])+len(x[1]))


# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"maximale_taken({test[0]}, {test[1]})"
    #description_name = generate_expression("eieren_koken", test)
    #description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.maximale_taken(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = {"expression": expression_name,
                    #"description": description,
                    "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



