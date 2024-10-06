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

# generate test data
ntests = 20


cases = [{"Inside Out 2": [9, 10, 9.5, 8.5, 3, 7.5, 8],
          "Bad Boys: Ride or Die": [7, 6, 5]}]

films = [
    "Dune",
    "Spider-Man: No Way Home",
    "The Batman",
    "Top Gun: Maverick",
    "Avatar: De Weg van Water",
    "No Time to Die",
    "Black Panther: Wakanda Forever",
    "Guardians of the Galaxy Deel 3",
    "Shang-Chi and the Legend of the Ten Rings",
    "Doctor Strange in het Multiversum van Waanzin",
    "The Suicide Squad",
    "A Quiet Place Deel II",
    "The Whale",
    "The Flash",
    "Everything Everywhere All at Once",
    "The Northman",
    "Bullet Train",
    "Elvis",
    "Don't Look Up",
    "The Menu",
    "Barbie",
    "Oppenheimer",
    "The Marvels",
    "John Wick: Chapter 4",
    "Nope",
    "Glass Onion: A Knives Out Mystery",
    "Lightyear",
    "The Fabelmans",
    "Scream VI",
    "Asteroid City"
]

while len(cases) < ntests:
    dict = {}
    choices = random.choices(films, k = random.randint(2,20))
    for film in choices:
        list = [random.randint(1,9)+random.randint(0,1)*0.5 for i in range(random.randint(2,50))]
        dict[film] = list
    
    if dict not in cases:
        cases.append(dict)        

cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"cinema({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.cinema(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



