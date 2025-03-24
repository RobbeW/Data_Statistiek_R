def kleinste_pad_tekenen(matrix):
    nrow = len(matrix)
    ncol = len(matrix[0])
    r = 0
    c = 0

    for _ in range(nrow + ncol - 2):
        val = matrix[r][c]
        matrix[r][c] = "X"
        if r == nrow - 1:
            c += 1
        elif c == ncol -1:
            r += 1
        else:
            if matrix[r][c+1] < matrix[r+1][c]:
                c +=1
            else:
                r += 1
    matrix[nrow-1][ncol-1] = "X"
        
    return matrix
