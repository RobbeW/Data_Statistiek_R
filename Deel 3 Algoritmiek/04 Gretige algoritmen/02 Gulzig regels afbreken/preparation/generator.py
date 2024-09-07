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
cases = [(7, ["Dit", "is", "een", "makkie"]),
         (7, ["Perfect"]),
         (10, ["Deze", "editie", "is", "de", "beste", "ooit"]),
         (20, ["Programmeren","is","het","schrijven", "van", "een", "computerprogramma"]),
         (11, ["een", "concrete", "reeks", "instructies", "die", "een", "computer", "uitvoert"]),
         (40, ["Dit", "is", "de", "taak", "van", "een", "softwareontwikkelaar", "of", "programmeur", "Programmeren", "wordt", "in", "het", "algemeen", "niet", "direct"]),
         (80, ["in", "machinetaal", "gedaan", "maar", "in", "een", "programmeertaal", "De", "programmacode", "die", "wordt", "geschreven", "heet", "broncode", "en", "wordt", "door", "een", "assembler", "compiler", "of", "interpreter", "omgezet", "in", "machinecode"]),
         (80, ["Met", "compilers", "die", "dezelfde", "programmeertaal", "naar", "verschillende", "machinetalen", "omzetten", "wordt", "het", "mogelijk", "om", "programmatuur", "te", "schrijven", "die", "niet", "gebonden", "is", "aan", "een", "specifieke", "processor", "Bovendien", "ondersteunt", "een", "programmeertaal", "een", "hoger", "niveau", "van", "abstractie", "dan", "machinetaal", "waardoor", "programmas", "gemakkelijker", "te", "begrijpen", "en", "te", "wijzigen", "zijn"]),
         (20, ["De", "omvang", "van", "programmeerwerk", "verschilt", "sterk", "Veel", "programmas", "bestaan", "uit", "enkele", "regels", "broncode", "die", "na", "eenmalig", "gebruik", "worden", "afgedankt;", "maar", "ook", "programmas", "met", "miljoenen", "regels", "broncode", "die", "gedurende", "tientallen", "jaren", "worden", "gebruikt", "en", "aangepast", "door", "duizenden", "programmeurs", "zijn", "niet", "zeldzaam."]),
         (7, ["Perfect","Perfect"]),
         (9, ['Hij', 'gaat', 'naar', 'school', 'met', 'de', 'fiets']),
         (7, ['Het', 'boek', 'ligt', 'op', 'de', 'bank', 'naast', 'de', 'plant']),
         (9, ['De', 'hond', 'rent', 'sneller', 'dan', 'de', 'kat']),
         (9, ['Kinderen', 'spelen', 'graag', 'buiten', 'met', 'vrienden']),
         (73, ['De', 'lange', 'zomerdag', 'begon', 'vroeg', 'en', 'eindigde', 'met', 'een', 'prachtige', 'zonsondergang', 'die', 'de', 'lucht', 'veranderde', 'in', 'kleuren', 'zoals', 'roze', 'oranje', 'en', 'paars', 'Terwijl', 'de', 'vogels', 'zongen', 'in', 'de', 'bomen', 'liepen', 'mensen', 'langs', 'het', 'strand', 'en', 'genoten', 'van', 'de', 'warme', 'zomerse', 'avond', 'met', 'vrienden', 'en', 'familie', 'dichtbij'])
]


# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    print(test)
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"rafeligheid({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.rafeligheid(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



