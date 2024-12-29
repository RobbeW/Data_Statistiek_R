def draai(matrix):
    n = len(matrix)
    m = len(matrix[0])
    
    nieuw = []
    for c in range(m):
        rij = []
        for r in range(n):
            el = matrix[n-r-1][c]
            rij.append(el)
        nieuw.append(rij)
    
    return nieuw
