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

# generate test data
ntests = 20
cases = [ ]
city_temperatures = {
    "Amsterdam": 10.5,
    "Rotterdam": 10.8,
    "Den Haag": 10.7,
    "Utrecht": 10.4,
    "Eindhoven": 11.0,
    "Maastricht": 10.9,
    "Groningen": 9.7,
    "Leeuwarden": 9.6,
    "Arnhem": 10.1,
    "Nijmegen": 10.2,
    "Brussel": 10.9,
    "Antwerpen": 11.0,
    "Gent": 10.7,
    "Brugge": 10.2,
    "Parijs": 12.0,
    "Lyon": 11.5,
    "Marseille": 15.2,
    "Nice": 15.5,
    "Londen": 11.1,
    "Birmingham": 10.0,
    "Manchester": 10.1,
    "Edinburgh": 8.5,
    "Dublin": 9.8,
    "Berlijn": 9.9,
    "Hamburg": 9.2,
    "München": 8.6,
    "Keulen": 10.3,
    "Frankfurt": 10.1,
    "Wenen": 10.5,
    "Zürich": 9.3,
    "Genève": 10.3,
    "Bern": 8.8,
    "Madrid": 14.5,
    "Barcelona": 16.5,
    "Valencia": 17.8,
    "Sevilla": 19.2,
    "Lissabon": 17.4,
    "Porto": 15.2,
    "Rome": 16.5,
    "Milaan": 12.7,
    "Napels": 17.2,
    "Warschau": 8.2,
    "Krakau": 8.5,
    "Praag": 9.0,
    "Boedapest": 10.8,
    "Bratislava": 10.5,
    "Sofia": 10.4,
    "Kopenhagen": 9.0,
    "Oslo": 6.3,
    "Stockholm": 7.3,
    "Helsinki": 5.9
}


while len(cases) < ntests:
    n = random.randint(1,40)
    cities = random.choices(list(city_temperatures.keys ()), k = n)
    print(cities)
    dict = {}
    for city in cities:
        t = city_temperatures[city]
        dict[city] = round(t + random.uniform(-5,5), 1)
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
    expression_name = f"temperatuur({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.temperatuur(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "stdout" : stdout }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



