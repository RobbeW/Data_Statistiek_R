def minor_matrix(matrix, rij, kolom):
    nieuw = []
    
    for r in range(len(matrix)):
        if r + 1 != rij:
            rijtje = []
            for c in range(len(matrix[0])):
                if c + 1 != kolom:
                    element = matrix[r][c]
                    rijtje.append(element)
            nieuw.append(rijtje)
    
    return nieuw
