def omvormen(voornamen):
    omgevormd = {}
    
    for voornaam, aantal in voornamen.items():
        if aantal in omgevormd:
            omgevormd[aantal].append(voornaam)
        else:
            omgevormd[aantal] = [voornaam]
    
    return omgevormd
