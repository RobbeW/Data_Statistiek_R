def kolomsom(matrix):
    result = []
    r = len(matrix)
    c = len(matrix[0])
    for i in range(c):
        som = 0
        for j in range(r):
            som += matrix[j][i]
        result.append(som)
    return result      
