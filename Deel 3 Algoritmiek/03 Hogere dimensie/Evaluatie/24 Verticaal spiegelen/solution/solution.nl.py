def spiegel_verticaal(rooster):    
    aantal_rows = len(rooster)
    aantal_cols = len(rooster[0])
    
    nieuw = []
    for r in range(aantal_rows):
        rij = []
        for c in range(aantal_cols):
            el = rooster[aantal_rows - r - 1][c]
            rij.append(el)
        nieuw.append(rij)
        
    return nieuw
