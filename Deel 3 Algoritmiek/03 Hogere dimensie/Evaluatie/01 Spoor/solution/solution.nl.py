def spoor(matrix):
    n = len(matrix)
    som = 0
    for i in range(n):
        som += matrix[i][i]
    return som
