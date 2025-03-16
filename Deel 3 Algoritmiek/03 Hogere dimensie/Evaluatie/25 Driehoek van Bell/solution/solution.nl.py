def driehoek(k):
    mat = []
    waarde = 1
    row = [waarde]
    mat.append(row)
    
    for r in range(k - 1):
        row = [waarde]
        for c in range(r + 1):
            waarde = row[c] + mat[r][c]
            row.append(waarde)
        mat.append(row)
        
    return mat
