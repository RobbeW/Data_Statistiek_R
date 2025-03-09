def minor_matrix(matrix, rij, kolom):
    nieuw = []
    
    for r in range(len(matrix)):
        if r + 1 != rij:
            rij = []
            for c in range(len(matrix[0])):
                if c + 1 != kolom:
                    element = matrix[r][c]
                    rij.append(element)
            nieuw.append(rij)
    
    return nieuw
