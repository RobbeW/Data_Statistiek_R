def som(matrix1, matrix2):
    R = len(matrix1)
    C = len(matrix1[0])
    result = []
    for r in range(R):
        row = []
        for c in range(C):
            el = matrix1[r][c] + matrix2[r][c]
            row.append(el)
        result.append(row)
    return result      
