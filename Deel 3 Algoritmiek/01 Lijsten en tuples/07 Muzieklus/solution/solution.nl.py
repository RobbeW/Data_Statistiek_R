def aantal(lijst):
    n = len(lijst)
    aantal = 0
    for i in range(n):
        noot = lijst[i]
        if i == 0:
            vorige = lijst[n - 1]
        else:
            vorige = lijst[i - 1]
        if i == n-1:
            volgende = lijst[0]
        else:
            volgende = lijst[i + 1]

        if vorige > noot < volgende or vorige < noot > volgende:
            aantal += 1
    
    return aantal
