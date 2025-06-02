def oppervlakte_aanzicht(blokken):   
    n_rows = len(blokken)
    n_cols = len(blokken[0])
    
    som = 0
    for r in range(n_rows):
        som += max(blokken[r]) # vooraanzicht
        for c in range(n_cols):
            if blokken[r][c] != 0: # bovenvlak tellen
                som += 1
    
    # nog de rechterzijaanzichten tellen als maximum per rij
    for c in range(n_cols):
        maxi = blokken[0][c]
        for r in range(1, n_rows):
            if blokken[r][c] > maxi:
                maxi = blokken[r][c]
        som += maxi            
    
    return som
