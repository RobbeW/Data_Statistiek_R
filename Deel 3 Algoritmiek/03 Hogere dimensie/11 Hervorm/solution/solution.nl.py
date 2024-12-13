def hervorm(matrix, R, K):
    aantal_r = len(matrix)
    aantal_c = len(matrix[0])
    
    nieuw = []
    row = []
    i = 0
    for r in range(aantal_r):
        for c in range(aantal_c):
            getal = matrix[r][c]
            i += 1
            if i % K == 0:
                row.append(getal)
                nieuw.append(row)
                row = []
            else:
                row.append(getal)
    
    return nieuw