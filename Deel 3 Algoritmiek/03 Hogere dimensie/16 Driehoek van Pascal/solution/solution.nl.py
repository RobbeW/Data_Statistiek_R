def driehoek(k):
    mat = []
    row = [1] * k
    mat.append(row)
    for r in range(k - 1):
        row = [1]
        for c in range(k - r - 2):
            value = row[c] + mat[r][c + 1]
            row.append(value)
        mat.append(row)
        
    return mat
