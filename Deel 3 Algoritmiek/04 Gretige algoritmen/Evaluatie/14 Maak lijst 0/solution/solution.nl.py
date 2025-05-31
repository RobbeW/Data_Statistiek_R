def minimaal_naar_nul(lijst):
    # tel gewoon het aantal verschillende getallen...
    lijst.sort()
    
    aantal_stappen = 0
    getal = lijst[0]
    if getal != 0:
        aantal_stappen += 1

    for i in range(1, len(lijst)):
        if lijst[i] != getal:
            getal = lijst[i]
            aantal_stappen += 1
   
    return aantal_stappen
 