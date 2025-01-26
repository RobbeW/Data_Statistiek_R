def knapsack(max, lijst):
    # bepaal gemiddelde kostprijzen
    gemiddeldes = []
    for item in lijst:
        gem = round(item[1] / item[0], 2)
        gemiddeldes.append(gem)
    
    keuze = {}
    massa = 0
    for i in range(len(gemiddeldes)):
        item = lijst[i]
        aantal = (max - massa) // item[0]
        if aantal > 0:
            keuze[item] = aantal
        massa += aantal * item[0]
    
    return keuze
