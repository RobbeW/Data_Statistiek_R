def kleinste_pad(matrix):
    nrow = len(matrix)
    ncol = len(matrix[0])
    som = matrix[0][0]
    r = 0
    c = 0
    
    for _ in range(nrow + ncol - 2):
        if c + 1 < ncol:
            rechts = matrix[r][c+1]
        else:
            rechts = matrix[r+1][c] + 1
        
        if r + 1 < nrow:
            onder = matrix[r+1][c]
        else:
            onder = matrix[r][c+1] + 1
        
        if rechts < onder:
            som += rechts
            c += 1
        else:
            som += onder
            r += 1
        
    return som
