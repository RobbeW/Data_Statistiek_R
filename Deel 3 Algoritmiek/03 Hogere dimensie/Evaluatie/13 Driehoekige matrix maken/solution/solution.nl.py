def driehoekig(n):    
    matrix = []
    for r in range(n):
        rij = []
        for c in range(n):
            if n - 1 - r <= c:
                element = c + r + 2 - n
            else:
                element = 0
            rij.append(element)
        matrix.append(rij)
    
    return matrix
