def geluksgetal(matrix):
    m = len(matrix)
    n = len(matrix[0])
    
    result = ""
    for r in range(m):
        rij = matrix[r]
        for c in range(n):
            el = matrix[r][c]
            if el == min(rij):
                # is het ook het grootste in de kolom?
                is_grootste = True
                for i in range(m):
                    check = matrix[i][c]
                    if check > el:
                        is_grootste = False

                if is_grootste:
                    result = el      
    
    if result == "":
        return "Geen geluksgetal"
    else:
        return result
