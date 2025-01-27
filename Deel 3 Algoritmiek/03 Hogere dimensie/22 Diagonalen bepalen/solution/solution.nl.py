def diagonalen(mat):
    hoofddiagonaal = []
    nevendiagonaal = []
    
    aantal_rij = len(mat)
    
    for r in range(aantal_rij):
        el1 = mat[r][r]
        el2 = mat[aantal_rij - r - 1][r]
        hoofddiagonaal.append(el1)
        nevendiagonaal.append(el2)
        
    return (hoofddiagonaal, nevendiagonaal)
