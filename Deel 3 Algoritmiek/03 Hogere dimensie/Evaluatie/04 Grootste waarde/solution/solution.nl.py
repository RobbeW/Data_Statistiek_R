def index_grootste_waarde(matrix):
    rM, cM = 0, 0
    grootste = matrix[0][0]
    
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            if matrix[r][c] > grootste:
                grootste = matrix[r][c]
                rM, cM = r, c
    
    return (rM, cM)
