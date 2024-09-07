def knapsack(max, lijst):
    # bepaal gemiddelde kostprijzen
    # lijst is van de vorm (m, kostprijs)
    kostprijzen = {}
    for item in lijst:
        gem = round(item[1] / item[0], 2)
        if gem in kostprijzen:
            if kostprijzen[gem][1] > item[1]:
                kostprijzen[gem] = item
        else:
            kostprijzen[gem] = item
    
    gesorteerd = sorted(list(kostprijzen.keys()), reverse=True)
    
    keuze = {}
    massa = 0
    for rel_massa in gesorteerd:
        item = kostprijzen[rel_massa]
        aantal = (max - massa) // item[0]
        if aantal > 0:
            keuze[item] = aantal
        massa += aantal * item[0]
    
    return keuze
