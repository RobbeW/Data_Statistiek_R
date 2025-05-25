def maximale_tassen(capaciteit, stenen, extra):
    n = len(capaciteit)
    verschil = []
    for i in range(n):
        getal = capaciteit[i] - stenen[i]
        verschil.append(getal)
    
    verschil.sort() # sorteren van laag naar groot
    
    i = 0
    aantal_vol = 0
    while i < n and extra > 0:
        if verschil[i] == 0:
            aantal_vol += 1
        elif verschil[i] <= extra: # we kunnen de tas opvullen met stenen
            aantal_vol += 1
            extra -= verschil[i]
        else:
            extra = 0 # niets meer te doen, rest van de stenen kan weg
        i += 1
    
    
    return aantal_vol
 