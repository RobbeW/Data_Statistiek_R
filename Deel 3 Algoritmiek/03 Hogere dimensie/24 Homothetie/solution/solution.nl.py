def homothetie(mat, k):
    nieuw = []
    aantal_rijen = len(mat)
    
    for r in range(aantal_rijen * k):
        rij = []
        for c in range(aantal_rijen * k):
            rij_bron = r // k
            col_bron = c // k
            el = mat[rij_bron][col_bron]
            rij.append(el)
        nieuw.append(rij)
        
    return nieuw
