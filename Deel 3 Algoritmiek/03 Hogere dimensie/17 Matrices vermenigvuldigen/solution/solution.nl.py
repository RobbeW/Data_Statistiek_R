def vermenigvuldig(matrix1, matrix2):
    n = len(matrix1)
    k = len(matrix2)
    m = len(matrix2[0])
    
    mat = []
    for r in range(n):
        row = []
        for c in range(m):
            #calculate element r, c in the new matrix
            som = 0
            for i in range(k):
                som += matrix1[r][i] * matrix2[i][c]
            row.append(som)
        mat.append(row)
            
    return mat      
