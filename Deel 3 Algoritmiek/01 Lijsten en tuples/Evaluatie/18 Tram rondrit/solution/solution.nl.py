def kortste_afstand(afstanden, start, eind):
    totaal = sum(afstanden)
    
    begin_i = min(start, eind)
    eind_i = max(start, eind)
    afstand = 0
    for i in range(begin_i, eind_i):
        afstand += afstanden[i]
    
    waarde = min(afstand, totaal - afstand)

    return waarde
