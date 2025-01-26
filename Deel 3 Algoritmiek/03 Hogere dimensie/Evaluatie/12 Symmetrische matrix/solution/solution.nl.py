def symmetrisch(n):    
    matrix = []
    for r in range(n):
        rij = []
        for c in range(n):
            element = abs(r - c)
            rij.append(element)
        matrix.append(rij)
    
    return matrix
