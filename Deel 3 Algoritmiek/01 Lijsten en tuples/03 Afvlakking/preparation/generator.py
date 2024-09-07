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
cases = [[1, 4, 3, 2, 5, 3, 6, 5],
         [1, 2],
         [5, 4, 3, 2, 1],
         [575, 2593, 99957, 12523, 37399, 48782, 45822, 28875, 10977, 56452, 15179, 92866, 55502, 4687, 97241, 26901, 9005, 66166, 4759, 34684],
         [78451, 86268, 91476, 5728, 78432, 14613, 91412, 35874, 63516, 80179],
         [13609, 73020, 30892, 7535, 40320, 1325, 39771, 62002, 54199, 52174, 4954, 8149, 94941, 68808, 59939, 10981, 99706, 25743, 52186, 57579, 165, 55778, 2840, 85031, 55437, 99420, 87602, 99601, 35009, 44058],
         [23308, 10787, 39325, 41748, 43521, 1152, 55798, 43018, 83148, 71448, 34432, 91123, 60695, 45128, 1222, 83254, 24579, 21742, 13580, 51765, 13869, 62469, 38806, 79312, 68317, 69390, 84278, 57116, 98206, 11475, 60269],
         [84076, 37718, 60781, 64143, 47842, 2676, 11193, 9727, 2604, 23882, 87505, 19119, 4844, 16389, 7809, 67336, 60809, 8616, 18524, 14706, 73209, 46636, 56178, 22309, 72275, 48582, 47999, 41453, 6852, 91567, 18649, 80879, 57462, 17598, 64580, 42286, 28355, 87041, 53546, 91979, 74852, 79048, 29081, 33572, 82922, 35360, 48790, 56097, 46086, 64953, 43559, 21501, 26834, 15522, 50802, 8402, 80857, 79147, 2640, 42898, 84477, 53681, 31466, 94433, 47712, 86122, 59962, 35716, 81236, 84405, 55175, 54113, 26187, 42571, 47973, 63392, 8885, 27097, 50825, 30757, 19831, 36964, 48595, 80703, 88265, 57575, 95867, 52876, 61560, 31636, 85048, 92758, 63444, 24991, 74579, 40710, 7840, 40552],
         [32150, 52402, 30567, 60915, 42439, 66651, 76103, 24347, 18663, 27066, 28724, 89220, 72815, 38880, 38779, 32510, 26146, 21336, 38542, 74989, 25510, 83624, 16231, 69930, 23139, 88703, 92098, 96184, 71657, 97964, 98160, 12023, 92085, 98964, 56706, 64268, 71004, 32493, 18873, 60720, 87618, 36375, 70438, 15815, 33505, 7849, 93873, 77903, 24617, 5324, 56399, 63323, 36111, 4198, 6687, 78130, 46055, 70991, 88941, 94424, 71018, 75564, 8460, 95274, 76514, 44576, 55994, 90872, 32787, 69268, 93943, 57452, 81100, 30732, 9576, 16031, 25086, 24952, 84791, 16134, 50879, 60851, 10567, 52575, 8000, 66118, 18701, 68430, 7258, 64079, 62947, 66476, 90402, 94302, 19061, 73794, 81502, 16882, 32],
         [84694, 39298, 50116, 79359, 80145, 97491, 58755, 80749, 63046, 44026, 7617, 23797, 59465, 57082, 36375, 65922, 15898, 67474, 77855, 9775, 64410, 77633, 43168, 62704, 6682, 53402, 92795, 35841, 73718, 67201, 80323, 87518, 40676, 65694, 70564, 56615, 63071, 23364, 88609, 61666, 46318, 46844, 94363, 29092, 89308, 23663, 37473, 25035, 96335, 9177, 87749, 21864, 32299, 83196, 13340, 56945, 76555, 9194, 39375, 34345, 50583, 20296, 66718, 343, 4144, 69753, 68693, 1187, 63893, 76634, 26647, 23900, 16589, 30015, 3886, 88919, 42285, 2006, 42949, 91438, 55136, 18158, 52004, 13961, 30696, 53636, 16919, 14159, 73297, 66040, 73029, 37514, 99821, 93574, 90671, 72749, 32717, 43156, 39654, 81456]
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
    expression_name = f"aantal_vakjes({test})"

    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.aantal_vakjes(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    

write_yaml(yamldata)



