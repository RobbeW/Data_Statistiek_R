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

olympic_weightlifters = [
    "Pyrros Dimas",
    "Lasha Talakhadze",
    "Kianoush Rostami",
    "Lu Xiaojun",
    "Ilya Ilyin",
    "Mohamed Ehab",
    "Oscar Figueroa",
    "Valentin Hristov",
    "Ruslan Nurudinov",
    "Behdad Salimi",
    "Yang Zhe",
    "Simon Martirosyan",
    "Eko Yuli Irawan",
    "David Katoatau",
    "Mart Seim",
    "Artem Okulov",
    "Denis Ulanov",
    "Andrei Aramnau",
    "Fernando Reis",
    "Ali Hashemi",
    "Saeid Alihosseini",
    "Aliaksandr Makaranka",
    "Reza Beiralvand",
    "Vadzim Straltsou",
    "Arturs Plesnieks",
    "Zhe Yang",
    "Rejepbaý Rejepow",
    "Anton Pliesnoi",
    "Arsen Kasabiev",
    "Igor Son"
]

cases = []

resultaten = {
    "Karlos Nasar": [173, 177, 180, 213, 224, "-"],
    "Yeison Lopez": [175, 180, "-", 205, 210, "-"],
    "Antonino Pizzolato": [172, "-", "-", 212, "-", "-"],
    "Marin Robu": [170, 175, "-", 200, 208, "-"]
}
cases.append(resultaten)

while len(cases) < ntests:
    dict = {}
    athletes = random.sample(olympic_weightlifters, k = random.randint(5,30))
    for ath in athletes:
        results = [random.randint(140,180) for _ in range(3)] + [random.randint(180,225) for _ in range(3)]
        a = random.randint(0,2)
        b = random.randint(0,2)
        if a == 1:
            results[2] = "-"
            results[1] = "-"
        elif a == 2:
            results[2] = "-"
        
        if b == 1:
            results[5] = "-"
            results[4] = "-"
        elif b == 2:
            results[5] = "-"
        
        dict[ath] = results

    if dict not in cases:
        cases.append(dict)

cases = sorted(cases, key = lambda x: len(x.keys()))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"gewichtheffen({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.gewichtheffen(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



