def is_bovendriehoek(matrix):
    n = len(matrix)
    flag = True
    for i in range(1, n):
        for j in range(0, i):
            if matrix[i][j] != 0:
                flag = False
    return flag
