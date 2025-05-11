import math

def maximale_bebouwing(gronden, huizen_cirkel, huizen_vierkant):
    gronden.sort(reverse = True)
    for z in huizen_vierkant:
        huizen_cirkel.append(z * math.sqrt(2) / 2)
    
    huizen_cirkel.sort(reverse = True)
    
    aantal = 0
    i = 0
    j = 0
    while i < len(gronden) and j < len(huizen_cirkel):
        grond, huis = gronden[i], huizen_cirkel[j]
        if huis < grond:
            aantal += 1
            i, j = i + 1, j + 1
        else:
            j += 1
            
    return aantal
