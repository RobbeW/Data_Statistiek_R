def driehoek(k):
    mat = []
    waarde = 1
    row = [waarde]
    mat.append(row)
    
    for r in range(k - 1):
        row = [1]
        for c in range(r):
            waarde = row[c] + mat[r][c + 1]
            row.append(waarde)
        row.append(waarde)
        mat.append(row)
        
    return mat
