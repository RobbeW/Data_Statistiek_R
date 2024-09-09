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
cases = [(["P", "R", "G", "W"], ["P", "B", "W", "G"]), 
         (["B", "W", "G", "G"], ["G", "W", "B", "B"]), 
         (["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"], ["N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]),
         (["Y", "Y", "Y", "Y", "Y", "Z"], ["Y", "Z", "Z", "Z", "Z", "Z"]),
         (["Y", "Y", "Y", "Y", "Y", "Z"], ["Z", "Y", "Y", "Y", "Y", "Y"]),
]

icpc_secrets = [
    "10 ABCDEFGHIJ ABCDEFGHIJ",
    "10 AAAAAAAAAA AAAAAAAAAA",
    "10 ABCDEFGHIJ JABCDEFGHI",
    "10 AJCHEBGFID ABCDEFGHIJ",
    "1 J J",
    "1 J B",
    "50 TESSATESSATESSATESSATESSATESSATESSATESSATESSATESSA TESSATESSATESSATESSATESSATESSATESSATESSATESSATESSA",
    "50 TESSATESSATESSATESSATESSATESSATESSATESSATESSATESSA TESSATESSATESSATESSATESSATESSATESSATESSATESSATESSB",
    "2 GH GH",
    "2 GH HG",
    "2 GG HH",
    "2 GG GG",
    "2 GH GF",
    "2 GH FG",
    "42 QPTPCSNEQRPGPDAGNGSDHAOLJMLGKTISHIOJSTGOQB CJJLPGQQAQESHRHHSRCSMSSSICLSGMKABTMRRAFSIC",
    "44 EDLFLHISRFMGEAXAVXIDQKCIEDICTFQPIDULKVGTSKRX ERJRQPRLXLGMPVHVIHUDHKFBVHMRUFIQORBWASJAGPEV",
    "17 KAKKCLLBCLGDGAFED BLBGLIKILFCMBGCJK",
    "8 AOXEMEGD ARDLYCAK",
    "48 FHEBGILCKEAMKAGAJHGABCABBCEBILDCHIEAFEFDLFEIFKKD CIIHDHEAGDCFEAMDMCACHKEKJAEIADAEBIBGEFHKKLCDLDHA",
    "24 EAKBGEHMKCHGLEGKBHAADLDM GGGGHJKLKHMBKGLDJDJBIHGA",
    "16 MTKHMPHSGSFUFUYM FQUDWTXXIJYEDGMN",
    "3 JCM SMQ",
    "42 CSKGPRIDNUBQCGGLTRUASAAJHCGGDNNDIAJCRPDHOF KMUQGBDPUNKDKBEUJCJTOADDFKJNNLDABCOHCRUBHJ",
    "34 FGFCGABECFBDDCABAFBCEFCGEDAGCFCACF CAAEFCECEBACEDDGDFAFFGDBGCCBACEBAC",
    "13 DKJDOGAMOKAJA FJIFOBKICNBEJ"
]

for secret in icpc_secrets:
    n, c, g = secret.split()
    cases.append( (list(c), list(g)) )

cases = sorted(cases, key = lambda x: len(x[0]))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"mastermind({test[0]}, {test[1]})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.mastermind(test[0], test[1])
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



