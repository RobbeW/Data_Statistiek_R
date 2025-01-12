def matrix_maken(n):
    mat = []
    for _ in range(n):
        rij = []
        for c in range(n):
            rij.append(c + 1)
        mat.append(rij)
    return mat
