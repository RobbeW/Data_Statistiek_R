def verticaal(mat):
    lijst = []
    
    aantal_rij = len(mat)
    aantal_col = len(mat[0])
    
    for c in range(aantal_col):
        for r in range(aantal_rij):
            el = mat[aantal_rij - r - 1][c]
            lijst.append(el)
        
    return lijst
