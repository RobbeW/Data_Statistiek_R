def oppervlakte(blokken):   
    n_rows = len(blokken)
    n_cols = len(blokken[0])
    
    som = 0
    aantal = 0
    corr = 0
    for r in range(n_rows):
        for c in range(n_cols):
            som += blokken[r][c]
            if blokken[r][c] != 0:
                aantal += 1
            
            if r - 1 >= 0:
                corr += min(blokken[r][c], blokken[r - 1][c])
            if r + 1 < n_rows:
                corr += min(blokken[r][c], blokken[r + 1][c])

            if c - 1 >= 0 :
                corr += min(blokken[r][c], blokken[r][c - 1])
            if c + 1 < n_cols:
                corr += min(blokken[r][c], blokken[r][c + 1])
    totaal = 4 * som + 2 * aantal - corr
    
    return totaal
