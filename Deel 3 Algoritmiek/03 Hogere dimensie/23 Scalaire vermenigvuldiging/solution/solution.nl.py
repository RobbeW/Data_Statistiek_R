def scalair_product(mat, k):
    nieuw = []
    for r in range(len(mat)):
        rij = []
        for c in range(len(mat[0])):
            el = mat[r][c]
            rij.append(el * k)
        nieuw.append(rij)
        
    return nieuw
