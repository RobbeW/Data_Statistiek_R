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
        txt += ", ("
        for i in range(len(add)):
            el = add[i]
            txt += f"{el}"
            if i != len(add) - 1:
                txt += ", "
            else:
                txt += ")"
            
    txt += "])"
    return txt

def generate_grid(rows, cols):
    # Maak een rooster gevuld met obstakels (1)
    grid = [[1] * cols for _ in range(rows)]
    
    # Genereer een pad met alleen 0'en
    r, c = 0, 0
    grid[r][c] = 0
    path = [(r, c)]
    
    while r < rows - 1 or c < cols - 1:
        if r == rows - 1:
            c += 1  # Kan alleen naar rechts
        elif c == cols - 1:
            r += 1  # Kan alleen naar beneden
        else:
            if random.random() < 0.5:
                c += 1  # Beweeg naar rechts
            else:
                r += 1  # Beweeg naar beneden
        grid[r][c] = 0
        path.append((r, c))
    
    co = random.choice(path)
    
    # Vul de rest van het rooster willekeurig met 0'en en 1'en
    for i in range(rows):
        for j in range(cols):
            if (i, j) not in path:  # Zorg dat het pad niet wordt overschreven
                grid[i][j] = random.choice([0, 1])
    
    return (grid, tuple(co))

woorden = [
    "schaap",
    "roomboter",
    "aangelegd",
    "troosteloos",
    "onmiddellijk",
    "spannend",
    "aannemen",
    "stroomversnelling",
    "glimmend",
    "droomwereld",
    "aangenaam",
    "loopbaan",
    "voorraad",
    "toegankelijk",
    "officieel",
    "druppelen",
    "onbevangen",
    "binnenkort",
    "spookachtig",
    "tussenstand",
    "doorstroming",
    "vriendschappelijk"
]


# generate test data
ntests = 2
cases = [("bas", "llat", "ballast"),
         ("bsa", "llat", "ballast"),
         ("aab", "aac", "aaabac"),
         ("aanna", "geam", "aangenaam"),
         ("aaaabb", "aabbaa", "aaaabbaaaabb"),
         ("vora", "orad", "voorraad")]

for woord in woorden:
    woord1 = []
    woord2 = []
    
    for letter in woord:
        if random.randint(0,1) == 0:
            woord1.append(letter)
        else:
            woord2.append(letter)
    
    flag = random.randint(0,4)
    if  flag == 0:
        # flip in woord 1
        i, j = [random.randint(0, len(woord1) - 1) for _ in range(2)]
        temp = woord1[i]
        woord1[i] = woord1[j]
        woord1[j] = temp
    elif flag == 1:
        # flip in woord 1
        i, j = [random.randint(0, len(woord2) - 1) for _ in range(2)]
        temp = woord1[i]
        woord2[i] = woord2[j]
        woord2[j] = temp
    
    woord1_txt = "".join(woord1)
    woord2_txt = "".join(woord2)
    
    if len(woord1_txt) > 0 and len(woord2_txt) > 0:
        case = (woord1_txt, woord2_txt, woord)
        if case not in cases:
            cases.append(case)

cases = sorted(cases, key=lambda x: len(x[2]))


# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"woorden_ritsen(\"{test[0]}\", \"{test[1]}\", \"{test[2]}\")"
    #description_name = generate_expression("woorden_ritsen", test[0], tuple(test[1]))
    #description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.woorden_ritsen(test[0], test[1], test[2])
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



