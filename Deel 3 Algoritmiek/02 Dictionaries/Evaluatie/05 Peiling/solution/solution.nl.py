def voorspelling(zetels, coalitie):
    totaal = sum(zetels.values())
    
    som = 0
    for partij in coalitie:
        som += zetels[partij]
    
    if som > totaal / 2:
        tekst = "Correcte voorspelling"
    else:
        tekst = "Foutieve voorspelling"
    
    return tekst
