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

cases = []

gent = {'19': ['Arteveldestadion', 'Proeftuinstraat', 'UZ Heymanslaan', 'Heymanslaan', 'Koekoeklaan', 'Zwijnaardsesteenweg (spoorwegbrug)', 'Parkplein',
               'Sint-Pietersstation', 'Meersstraat', 'Koning Albertbrug (Sportstraat)', 'Koning Albertbrug (Neermeerskaai)', 'Sportstraat', 'Neermeerskaai', 'Europabrug', 'Verenigde Natieslaan', 'Europalaan'], 
        '71': ['De Deynestraat', 'De Pintelaan', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation', 'Parkplein', 'Fortlaan', 
               'Ledeganckstraat', 'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Eendrachtstraat', 'Dampoort', 'La Sapinière', 'Bernadette Kerk', 'Volvo Cars'], 
        '20': ['Sint-Pietersstation', 'Parkplein', 'Zwijnaardsesteenweg', 'Zomerstraat'], 
        '33': ['Sint-Lievenspoort', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Eendrachtstraat', 
               'Dampoort', 'Nieuwhof'], 
        '60': ['Rabot (Griendeplein)', 'Wittekaproenenplein', 'Nieuwevaartbrug', 'Westerbegraafplaats'], 
        '9a': ['Machinistenpark', 'Staakskenstraat', 'Guislainbrug', 'Rooigem (R40)', 'Peerstraat', 'Malem (Rooigemlaan)', 'Overzet', 'Beneluxplein', 
               'Einde Were', 'Andrieslaan', 'Beneluxplein', 'Yachtdreef', 'Bernard Spaelaan', 'Europabrug', 'Sportstraat', 'Koning Albertbrug (Sportstraat)', 'Koning Albertbrug', 'Meersstraat', 'Sint-Pietersstation', 'Parkplein', 'Zwijnaardsesteenweg', 'Zomerstraat'], 
        '9b': ['Jutestraat', 'Fluweelstraat', 'Malpertuusplein', 'Rooigem (R40)', 'Peerstraat', 'Malem (Rooigemlaan)', 'Overzet', 'Beneluxplein', 
               'Einde Were', 'Andrieslaan', 'Beneluxplein', 'Yachtdreef', 'Bernard Spaelaan', 'Europabrug', 'Sportstraat', 'Koning Albertbrug (Sportstraat)', 'Koning Albertbrug', 'Meersstraat', 'Sint-Pietersstation', 'Parkplein', 'Zwijnaardsesteenweg', 'Zomerstraat'], 
        '48': ['Sint-Pietersstation', 'Tuinwijklaan', 'Flamingostraat', 'Sterre', 'De Pintelaan', 'De Deynestraat'], 
        '10': ['Jutestraat', 'Fluweelstraat', 'Malpertuusplein', 'Rooigem (R40)', 'Peerstraat', 'Rooigem (Bevrijdingslaan)', 'Malem', 
               'Malem (Rooigemlaan)', 'Einde Were', 'Notelaarstraat', 'Seghersplein', 'Nieuwewandeling', 'Brugsepoort', 'Poel', 'Korenmarkt', 'Sint-Jacobs', 'Sint-Jorisbrug', 'Jan van Gentstraat', 'Dampoort'], 
        '11': ['Europalaan', 'Yachtdreef', 'Andrieslaan', 'Beneluxplein', 'Overzet', 'Overzet', 'Einde Were', 'Nieuwewandeling', 'Brugsepoort', 
               'Poel', 'Korenmarkt', 'Sint-Jacobs', 'Sint-Jorisbrug', 'Jan van Gentstraat', 'Dampoort', 'Nieuwhof'], 
        '49': ['Sint-Pietersstation', 'Tuinwijklaan', 'Flamingostraat', 'Sterre', 'De Pintelaan', 'De Deynestraat'], 
        '50': ['De Deynestraat', 'De Pintelaan', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation'], 
        '76': ['Maaltebruggestraat', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation', 'Parkplein', 'Fortlaan', 'Ledeganckstraat', 
               'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Eendrachtstraat', 'Dampoort'], 
        '12a': ['Malem (Drongensesteenweg)', 'Geitstraat', 'Seghersplein (Weversstraat)', 'Brugsepoort', 'Poel', 'Korenmarkt', 'Sint-Jacobs', 
                'Sint-Jorisbrug', 'Jan van Gentstraat', 'Dampoort'], 
        '12b': ['Malem (Drongensesteenweg)', 'Geitstraat', 'Seghersplein (Weversstraat)', 'Brugsepoort', 'Poel', 'Korenmarkt', 'Sint-Jacobs', 
                'Sint-Jorisbrug', 'Jan van Gentstraat', 'Dampoort'], 
        '77': ['Maaltebruggestraat', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation', 'Parkplein', 'Fortlaan', 'Ledeganckstraat', 
               'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Eendrachtstraat',  'Dampoort'], 
        '78': ['Maaltebruggestraat', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation', 'Parkplein', 'Fortlaan', 'Ledeganckstraat', 
               'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Eendrachtstraat',  'Dampoort'], 
        '40': ['Zuid', 'Vijfwindgatenstraat', 'Sint-Lievenspoort'], 
        '79': ['Spanjeveerbrug', 'Herpelinckstraat', 'Kapelledreef', 'Arcelor Mittal'], 
        '41': ['Zuid', 'Vijfwindgatenstraat', 'Sint-Lievenspoort'], 
        '16': ['Zuid', 'Kapucijnenham', 'Reep', 'Van Eyckstraat', 'Puinstraat', 'Lousbergsbrug', 'Lousbergskaai', 'Zalmstraat', 'Minneplein'], 
        '42': ['Zuid', 'Vijfwindgatenstraat', 'Sint-Lievenspoort'], 
        '55': ['Sint-Pietersstation', 'Parkplein', 'Fortlaan', 'Ledeganckstraat', 'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 
               'Vijfwindgatenstraat', 'Zuid', 'Kapucijnenham', 'Reep', 'Sint-Jacobs', 'Ottogracht', 'AZ Sint-Lucas', 'Sanderusstraat', 'Tolpoort', 'Tolhuisbrug', 'Pantserschipstraat', 'taminco', 'Taminco', 'Passagierstraat', 'Wondelgemkaai', 'Gentweg'], 
        '56': ['Zuid', 'Kapucijnenham', 'Reep', 'Sint-Jacobs', 'Ottogracht', 'AZ Sint-Lucas', 'Sanderusstraat', 'Tolpoort', 
               'Tolhuisbrug', 'Spesbroekstraat'], 
        '5a': ['Salamanderstraat', 'Berkhoutsheide', 'Jaspisstraat', 'Haardstedestraat', 'Roelandtplein', 'Van Haelststraat', 'UZ Zwijnaardsesteenweg', 
               'Opvoedingstraat', 'Zwijnaardsesteenweg (spoorwegbrug)', 'de Heerestraat', 'Ottergemsesteenweg', 'Heuvelpoort', 'Sint-Pietersplein', 'Blandijnberg', 'Bagattenstraat', 'Zuid', 'Kapucijnenham', 'Reep', 'Sint-Jacobs', 'Ottogracht', 'AZ Sint-Lucas', 'Sanderusstraat', 'Tolpoort', 'Wiedauwkaai', 'Vynckier', 'Gaardeniersbrug', 'Wondelgembrug', 'Fuchsiastraat', 'Van Beverenplein', 'van Ryhovelaan'], 
        '5b': ['Salamanderstraat', 'Berkhoutsheide', 'Jaspisstraat', 'Haardstedestraat', 'Roelandtplein', 'Van Haelststraat', 'UZ Zwijnaardsesteenweg', 
               'Opvoedingstraat', 'Zwijnaardsesteenweg (spoorwegbrug)', 'de Heerestraat', 'Ottergemsesteenweg', 'Heuvelpoort', 'Sint-Pietersplein', 'Blandijnberg', 'Bagattenstraat', 'Zuid', 'Kapucijnenham', 'Reep', 'Sint-Jacobs', 'Ottogracht', 'AZ Sint-Lucas', 'Sanderusstraat', 'Tolpoort', 'Muidebrug', 'Pauwstraat', 'New-Yorkstraat', 'Leithstraat', 'Glasgowstraat', 'LDC De Waterspiegel', 'Glasgowstraat', 'Meeuwstraat'], 
        '6': ['Zuid', 'Kapucijnenham', 'Reep', 'Sint-Jacobs', 'Sint-Jorisbrug', 'Blekerijstraat', 'Stapelplein', 'Dok Noord', 'Heilig-Kerst', 
              'Neuseplein', 'Muidebrug', 'Aziëstraat', 'P+R Lübeck', 'Chinastraat', 'Scandinaviëstraat', 'P+R Muide'], 
        '70': ['De Deynestraat', 'De Pintelaan', 'Sterre', 'Flamingostraat', 'Tuinwijklaan', 'Sint-Pietersstation', 'Parkplein', 'Fortlaan', 
               'Ledeganckstraat', 'Heuvelpoort', 'Terplatenbrug', 'Leeuwstraat', 'Muinklaan', 'Vijfwindgatenstraat', 'Zuid', 'Tweebruggenstraat', 'Gent Eendrachtstraat', 'Eendrachtstraat', 'Dampoort', 'La Sapinière', 'Bernadette Kerk', 'Volvo Cars']}

cases.append(gent)

aalst = {'20': ['Erpestraat', 'Sint-Apoloniastraat', 'Kreupelveldstraat', 'Welvaartstraat', 'Sinte Annalaan', 'VTI', 'Verastenstraat', 
                'Ledebaan', 'Meuleschettekapel', 'Esplanade', 'Esplanade', 'Station'], 
         '59': ['Station', 'Vredeplein', 'Esplanade', 'Meuleschettekapel', 'Meuleschettekapel', 'Dendermondsesteenweg', 'Kerrebroekstraat'], 
         '91': ['Station', 'Esplanade', 'Zwartehoekbrug', 'Tramstraat', 'Pier Kornel', "Lion d'Or", 'Popperodedries', 'Bredestraat', 'Hammestraat'], 
         '40': ['Station', 'Een Meistraat', 'Doolhofstraat', 'Onze-Lieve-Vrouw Ziekenhuis', 'Paardendries', 'Achterweg'], 
         '2': ['Station', 'Een Meistraat', 'Doolhofstraat', 'Onze-Lieve-Vrouw Ziekenhuis', 'Zwembad', 'Beukendreef', 'Steenland', 'Borreput', 
               'Zandberg', 'Hof Somergem', 'Sint-Janskerk', 'Schietbaan', 'Crematorium', 'Stedelijk Ziekenhuis'], 
         '54': ['Station', 'Vredeplein', 'Esplanade', 'Meuleschettekapel', 'Meuleschettekapel', 'Dendermondsesteenweg', 'Kerrebroekstraat'], 
         '80': ['Station', 'Oude Vismarkt', 'Houtmarkt', 'Colinetstraat', 'Diepestraat', 'Capucienen'], 
         '87': ['Station', 'Oude Vismarkt', 'Houtmarkt', 'Colinetstraat', 'Diepestraat', 'Capucienen'], 
         '1': ['Stedelijk Ziekenhuis', 'Van Der Guchtlaan', 'Irisstraat', 'Korte Vooruitzichtstraat', 'Biekorfstraat', 'Boudewijnlaan', 
               'Technisch Atheneum 1', 'VTI', 'Ledebaan', 'Meuleschettekapel', 'Esplanade', 'Esplanade', 'Station', 'Een Meistraat', 
               'Dokter De Moorstraat', 'Tulpstraat', 'Stadion', 'Popperodehof', 'Ouden Dendermondse', 'Dompelstraat', 'Binnenstraat', 
               'Sporthal Ten Rozen', 'Oude Abdijstraat', 'Fonteinstraat', 'Rozendreef', 'Oude Abdijstraat'], 
         '31': ['Station', 'Oude Vismarkt', 'Houtmarkt', 'Blanckaertdreef', 'De Haring'], 
         '57': ['Station', 'Vredeplein', 'Esplanade', 'Meuleschettekapel', 'Meuleschettekapel', 'Dendermondsesteenweg', 'Kerrebroekstraat'], 
         '25': ['Station', 'Esplanade', 'Vredeplein', 'Gentsestraat', 'Sinte Annalaan', 'Welvaartstraat', 'Kreupelveldstraat', 'Sint-Apoloniastraat', 
                'Erpestraat']}

cases.append(aalst)


#cases = sorted(cases, key = lambda x: len(x))

# generate unit tests for functions
yamldata = []
tabtitle = "Feedback"

yamldata.append( {'tab': tabtitle, 'contexts': []})

for i in range(len(cases)):
    test = cases[i]
    yamldata[0]['contexts'].append( {'testcases' : []})
       
    # generate test expression
    expression_name = f"drukte_haltes({test})"
    print(expression_name)
    try:
        outputF = io.StringIO()
        with contextlib.redirect_stdout(outputF):
            result = module.drukte_haltes(test)
        stdout = outputF.getvalue() ##printed value

        print(stdout)
        print(result)
        # setup for return expressions
        testcase = { "expression": expression_name, "return" : result }
        yamldata[0]['contexts'][i]["testcases"].append( testcase)
    except Exception as e:
        print(e)    


write_yaml(yamldata)



