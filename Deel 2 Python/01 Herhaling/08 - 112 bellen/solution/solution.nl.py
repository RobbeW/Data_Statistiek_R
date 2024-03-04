# Invoer van het gegeven
vraag1 = input( 'Is er mogelijk een leven in gevaar? Een brand? ' ) 

# Berekening
if vraag1 == "ja" or vraag1 == "Ja" or vraag1 == "JA":
    print("Bel 112!")
else:
    vraag2 = input( 'Heb je hulp van de brandweer nodig? ' )
    if vraag2 == "ja" or vraag2 == "Ja" or vraag2 == "JA":
        print("Gebruik het e-loket www.1772.be of bel 1722.")
    else:
        print("Herstel het zelf of bel een vakman.")
