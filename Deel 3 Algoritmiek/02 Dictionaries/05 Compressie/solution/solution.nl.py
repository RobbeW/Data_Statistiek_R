def modus(lijst):
    dict = {}
    for key in lijst:
        if key in dict:
            dict[key] += 1
        else:
            dict[key] = 1
    
    waarde = lijst[0]
    aantal = 0
    for key in dict:
        if dict[key] > aantal:
            waarde = key
            aantal = dict[key]
        
    return waarde

def comprimeer(lijst):
    default = modus(lijst)
    dict = {}

    for i in range(len(lijst)):
        value = lijst[i]
        if value != default:
            dict[i] = value
    
    return (default, dict)
