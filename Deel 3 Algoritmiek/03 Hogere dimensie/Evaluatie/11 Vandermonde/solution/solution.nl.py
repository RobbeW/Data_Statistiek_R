def vandermonde(lijst, n):
    m = len(lijst)
    
    matrix = []
    for r in range(m):
        rij = []
        for c in range(n):
            element = lijst[r]**c
            rij.append(element)
        matrix.append(rij)
    
    return matrix
