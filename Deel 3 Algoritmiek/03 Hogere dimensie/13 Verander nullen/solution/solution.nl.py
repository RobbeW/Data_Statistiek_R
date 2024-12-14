def nullen(matrix):
    aantal_r = len(matrix)
    aantal_c = len(matrix[0])
    
    rijnrs = []
    kolnrs = []
    
    for r in range(aantal_r):
        for c in range(aantal_c):
            el = matrix[r][c]
            if el == 0:
                rijnrs.append(r)
                kolnrs.append(c)
    
    for r in rijnrs:
        for c in range(aantal_c):
            matrix[r][c] = 0
    
    for c in kolnrs:
        for r in range(aantal_r):
            matrix[r][c] = 0
    
    return matrix
