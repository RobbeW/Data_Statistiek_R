def vorm_om(lijst, K):
    matrix = []
    row = []
    for i in range(len(lijst)):
        el = lijst[i]
        row.append(el)
        if (i + 1) % K == 0:
            matrix.append(row)
            row = []
    
    while (i + 1) % K != 0:
        row.append(0)
        i += 1
    if len(row) != 0:
        matrix.append(row)    
    
    return matrix
