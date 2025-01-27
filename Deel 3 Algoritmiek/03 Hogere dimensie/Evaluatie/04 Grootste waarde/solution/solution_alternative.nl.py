def geluksgetal(matrix):
    m = len(matrix)
    n = len(matrix[0])

    # Find all minima of each row
    min_rij = []
    for r in range(m):
        min_rij.append(min(matrix[r]))
    # Find all maxima of each col
    max_col = []
    for c in range(n):
        max = matrix[0][c]
        for r in range(1, m):
            el = matrix[r][c]
            if el > max:
                max = el
        max_col.append(max)

    # Search for equal numbers
    r = 0
    flag = True
    while r < len(min_rij) and flag:
        c = 0
        while c < len(max_col) and flag:
            if min_rij[r] == max_col[c]:
                flag = False
            c += 1
        r += 1

    # Return statements
    if flag:
        return "Geen geluksgetal"
    return min_rij[r - 1]
