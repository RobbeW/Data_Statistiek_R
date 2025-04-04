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
ntests = 25
cases = [
         [[ 1, 15, 24, 14],[12, 28,  3,  5], [21,  6, 10,  4], [20,  2,  7, 18]],
         [[128,   1,  32], [  4,  16,  64], [  8, 256,   2]],
         [[128,   1,  32], [  8, 256,   2], [  4,  16,  64]],
         [[18, 1, 12], [4, 6, 9], [3, 36, 2]]
        ]


def generate_magic_square(n):
    if n < 3:
        raise ValueError("Magic squares are not possible for n < 3.")

    if n % 2 == 1:
        magic_square = generate_odd_magic_square(n)
    elif n % 4 == 0:
        magic_square = generate_doubly_even_magic_square(n)
    else:
        magic_square = generate_singly_even_magic_square(n)

    return apply_random_transformation(magic_square)

def generate_odd_magic_square(n):
    """Generates an odd-sized magic square using the Siamese method."""
    magic_square = [[0] * n for _ in range(n)]

    num = 1
    i, j = 0, n // 2  # Start from the middle of the first row

    while num <= n * n:
        magic_square[i][j] = num
        num += 1
        
        # Move up and right
        new_i, new_j = (i - 1) % n, (j + 1) % n

        if magic_square[new_i][new_j]:  # If the cell is already filled
            i += 1  # Move down instead
        else:
            i, j = new_i, new_j

    return magic_square

def generate_doubly_even_magic_square(n):
    """Generates a doubly even-sized magic square using the Strachey method."""
    magic_square = [[(i * n + j + 1) for j in range(n)] for i in range(n)]

    for i in range(n):
        for j in range(n):
            if (i % 4 == j % 4) or (i % 4 + j % 4 == 3):
                magic_square[i][j] = n * n + 1 - magic_square[i][j]

    return magic_square

def generate_singly_even_magic_square(n):
    """Generates a singly even-sized magic square using the divide and conquer method."""
    half_n = n // 2
    sub_square_size = half_n * half_n

    # Generate an odd magic square for the top-left quadrant
    sub_square = generate_odd_magic_square(half_n)

    # Initialize the full magic square
    magic_square = [[0] * n for _ in range(n)]

    # Place the sub-squares in the four quadrants
    for i in range(half_n):
        for j in range(half_n):
            magic_square[i][j] = sub_square[i][j]
            magic_square[i + half_n][j + half_n] = sub_square[i][j] + sub_square_size
            magic_square[i + half_n][j] = sub_square[i][j] + 2 * sub_square_size
            magic_square[i][j + half_n] = sub_square[i][j] + 3 * sub_square_size

    # Adjust values between quadrants
    k = half_n // 2
    for i in range(half_n):
        for j in range(k):
            magic_square[i][j], magic_square[i + half_n][j] = magic_square[i + half_n][j], magic_square[i][j]

        for j in range(n - k, n):
            magic_square[i][j], magic_square[i + half_n][j] = magic_square[i + half_n][j], magic_square[i][j]

    return magic_square

def apply_random_transformation(square):
    """Applies a random rotation or reflection to the magic square."""
    transformations = [
        lambda s: s,  # No change
        lambda s: [list(row) for row in zip(*s[::-1])],  # 90-degree rotation
        lambda s: [row[::-1] for row in s],  # Horizontal reflection
        lambda s: s[::-1],  # Vertical reflection
        lambda s: [list(row) for row in zip(*s)],  # Transpose
    ]
    transform = random.choice(transformations)
    return transform(square)

def print_magic_square(square):
    for row in square:
        print(" ".join(f"{num:3}" for num in row))


while len(cases) < ntests:
    n = random.randint(3, 6)
    
    mat = generate_magic_square(n)
    
    nieuw = []
    x = random.randint(2,math.ceil(6/n) +1)
    for r in range(len(mat)):
        rij = []
        for c in range(len(mat[0])):
            el = x**mat[r][c]
            rij.append(el)
        nieuw.append(rij)
    
    mat = nieuw
    
    if random.randint(0,1) == 1: #switch an item
        co_1 = [ random.randint(0, n-1) for _ in range(2)]
        co_2 = [ random.randint(0, n-1) for _ in range(2)]

        
        el = mat[co_1[0]][co_1[1]]
        mat[co_1[0]][co_1[1]] = mat[co_2[0]][co_2[1]]
        mat[co_2[0]][co_2[1]] = el
        
    case = mat
        
    if case not in cases:
        cases.append(case)

cases = sorted(cases, key = lambda x: len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"is_magisch({test})"
    description_name = generate_expression("is_magisch", test)
    description = {"description": description_name, "format": "python"}

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.is_magisch(test)
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



