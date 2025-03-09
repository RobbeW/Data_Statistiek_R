def kader(rooster, dikte):
    aantal_r = len(rooster)
    aantal_c = len(rooster[0])
    
    nieuw = []
    for r in range(aantal_r + 2 * dikte):
        rij = []
        for c in range(aantal_c + 2 * dikte):
            element = 128
            if dikte <= r < dikte + aantal_r and dikte <= c < dikte + aantal_c:
                element = rooster[r - dikte][c - dikte]
            rij.append(element)
        nieuw.append(rij)
        
    return nieuw
