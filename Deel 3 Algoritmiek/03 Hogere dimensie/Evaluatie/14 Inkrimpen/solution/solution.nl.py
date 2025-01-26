def bepaal_factor(mat):
    n = len(mat)
    
    i = 1
    while i < n and mat[0][i] == mat[0][i - 1]:
        i += 1
        
    return i

def inkrimpen(mat):
    n = len(mat)
    k = bepaal_factor(mat)
    
    n_nieuw = n // k
    nieuw = []
    for r in range(n_nieuw):
        rij = []
        for c in range(n_nieuw):
            el = mat[r*k][c*k]
            rij.append(el)
        nieuw.append(rij)
    return nieuw

