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
cases = [[1, 2, 3, 4, 5, 6, 7, 8, 9],
         [5, 5],
         [7, 1, 2, 9, 0, 4, 5, 8, 6, 3],
         [6],
         list(map(int, list('0000111122223333444455556666777788889999'))),
         list(map(int, list('1234567891234567890'))),
         list(map(int, list('4958908946303634780400604004303890400645680500836095443946452681005759982787338495083503450480588859070448638863709004034970309588430603135335583950890842890344030805796347580533545885249876482038920886885402886092998303029884335040084953333838440837459205005358020830599388338930374492340540067000655882946544291848820480634483340305360604805489803939650685690320772544922586506330097230880805095839989023402638249081096570793303406492085439302400840293230038933043008893046043105739034883380934008430989498800087040790068875388508409347804858472863049249393933845395303098877398343898985055684008508860903000909088038465854012900045852906355629440994546549000533825593856806839337580594993984000388009639888950488204045340640868408700282890905062000898854609735338838400099938832084488222031308072404365823703333000624602499388809082349403508588500360034874855095300030038353090604834032273275800486092048981734585383093060922032059085042368505045343602820018318330243364093480223582442538396456609')))]

decimals = [0, 1, 2 ,3 ,4 ,5 ,6 ,7 ,8 ,9]
while len(cases) < ntests:
    n = random.randint(2, 500)
    
    cijfers = random.choices(decimals, k=n)
    
    case = cijfers
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key=lambda x: len(x))


# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"frigo({test})"
    #description_name = generate_expression("eieren_koken", test)
    #description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.frigo(test)
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



