def is_toeplitz(matrix):
    aantal_r = len(matrix)
    aantal_c = len(matrix[0])
    
    resultaat = True
    for r in range(1, aantal_r):
        for c in range(1, aantal_c):
            el = matrix[r][c]
            if matrix[r-1][c-1] != el:
                resultaat = False
    
    return resultaat