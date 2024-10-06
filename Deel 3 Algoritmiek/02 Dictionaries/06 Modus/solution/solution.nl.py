def modus(lijst):
    dict = {}
    for key in lijst:
        if key in dict:
            dict[key] += 1
        else:
            dict[key] = 1
    
    waarde = lijst[0]
    aantal = 0
    for key, value in dict.items():
        if value > aantal:
            waarde = key
            aantal = value
        
    return waarde
