def detecteer(matrix):
    n = len(matrix[0])
    r = 0
    c = 0
    for i in range(n):
        som = 0
        for j in range(n):
            som += matrix[i][j]
        if som % 2 != 0:
            r = i
        
        som = 0
        for j in range(n):
            som += matrix[j][i]
        if som % 2 != 0:
            c = i
        
    return (r,c) 
    
