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
keuzevakken = [
    "Kunstgeschiedenis",
    "Inleiding tot Psychologie",
    "Kunstgeschiedenis",
    "Data-analyse en Statistiek",
    "Filosofie en Ethiek",
    "Milieu en Duurzaamheid",
    "Sociologie",
    "Creatief Schrijven",
    "Ondernemerschap",
    "Project Management",
    "Web Development",
    "Digitale Marketing",
    "Artificial Intelligence",
    "Globalisering en Internationale Relaties",
    "Muziek en Cultuur",
    "Vreemde Talen: Spaans",
    "Moleculaire Biologie",
    "Geschiedenis van de Wetenschap",
    "Kritisch Denken en Logica",
    "Sport en Gezondheid",
    "Fotografie en Visuele Communicatie",
    "Economische Theorie",
    "Programmeren in Python",
    "Klinische Psychologie",
    "Beeldende Kunst",
    "Internationaal Recht",
    "Moderne Politieke Filosofie",
    "Neuropsychologie",
    "Bouwkunde en Architectuur",
    "Toegepaste Wiskunde",
    "Genetica en Evolutie",
    "Inleiding tot Chemie",
    "Lichamelijke Opvoeding en Sport",
    "Marketingstrategie",
    "Maatschappelijke en Culturele Studies",
    "Taal en Communicatie",
    "Internationale Bedrijfskunde",
    "Digitale Transformatie",
    "Recht en Politiek in de EU",
    "Duurzame Energiebronnen",
    "Film en Mediacritiek",
    "Zorgmanagement",
    "Onderwijskunde",
    "Muziektheorie",
    "Ethische Dilemma's in Technologie",
    "Persoonlijke Financiën en Investeren",
    "Moderne Geschiedenis",
    "Cybersecurity",
    "Visuele Ontwerpprincipes",
    "HR Management",
    "Gendervraagstukken en Feminisme",
    "Milieuwetenschappen",
    "Culturele Antropologie",
    "Systeemdenken en Complexiteit"
]

cases = [{"Student 1": ["Spaans", "Grieks"],
                        "Student 2": ["Spaans", "Kunstgeschiedenis"]}]

while len(cases) < ntests:
    n = random.randint(1,40)
    dict = {}
    for i in range(n):
        label = f"Student {i + 1}"
        aantal_vakken = random.randint(1,5)
        keuzes = random.choices(keuzevakken, k = aantal_vakken)
        dict[label] = keuzes
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
    expression_name = f"aantal_studenten({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.aantal_studenten(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



