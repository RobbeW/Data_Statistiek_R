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

cases = [("bal","pet"), ("maan", "mens"), ("duwde", "afdak"), ("afkap", "afdak"), ("afdak", "atlas"), ("afdak", "aaien"), ("regen", "leven"), ("levensloop", "levensloop"),
         ("tijdeenheid", "verkoopboek"), ("productieband", "kwantumwereld"), ("zuigtabletten", "thuisadressen"),
         ("charmeerde", "charmeur"), ("charmeer", "charmeur"), ("doorgeefluik", "onnatuurlijk"), ("baankapitein","doorgeefluik"),
         ("baggeren", "baggeren"), ("sudderen", "sukkelen"), ("sukkelen", "sudderen"), ("korrelige", "kopstenen"), ("korrelige", "lokkertje"),
         ("pistachebomen", "opslagbeurten"), ("bandenlichter", "bandenlichters"), ("bandenlichters", "bandenlichter"), ("burgerwachten", "bandenlichter"),
         ("bandenlichter", "bankindustrie")]

cases = sorted(cases, key = lambda x: len(x[0]+x[1]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"is_isomorf(\"{test[0]}\", \"{test[1]}\")"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.is_isomorf(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



