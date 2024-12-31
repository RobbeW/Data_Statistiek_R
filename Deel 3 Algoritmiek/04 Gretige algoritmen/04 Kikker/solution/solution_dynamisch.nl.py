# Een oplossing via dynamisch programmeren...

def kleinste_pad(matrix):
    nrow = len(matrix)
    ncol = len(matrix[0])
    temp = []
    for _ in range(nrow):
        temp.append([0]*ncol)
    
    temp[0][0] = matrix[0][0]
    for r in range(nrow):
        for c in range(ncol):
            if r > 0 and c > 0:
                if temp[r-1][c] > temp[r][c-1]:
                    temp[r][c] = matrix[r][c] + temp[r][c-1]
                else:
                    temp[r][c] = matrix[r][c] + temp[r-1][c]
            elif c > 0: # first row
                temp[0][c] = matrix[0][c] + temp[0][c-1]
            elif r > 0: # first col
                temp[r][c] = matrix[r][c] + temp[r-1][c]
            else:
                temp[r][c] = matrix[r][c]

    result = temp[nrow - 1][ncol - 1]

    return result