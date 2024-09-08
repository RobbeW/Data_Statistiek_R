def is_symmetrisch(matrix):
    n = len(matrix)
    symmetrisch = True
    for i in range(n):
        for j in range(i, n):
            if matrix[i][j] != matrix[j][i]:
                symmetrisch = False
    return symmetrisch
