def transponeer(matrix):
    R = len(matrix)
    C = len(matrix[0])
    T = []
    for c in range(C):
        row = []
        for r in range(R):
            el = matrix[r][c]
            row.append(el)
        T.append(row)
    return T      
