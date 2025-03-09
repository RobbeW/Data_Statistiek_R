def sarrus(matrix):
    som = 0
    
    # hoofddiagonalen
    for n in range(3):
        product = 1
        for k in range(3):
            product *= matrix[k][(k + n) % 3]
        som += product
    
    # nevendiagonalen
    for n in range(3):
        product = 1
        for k in range(3):
            product *= matrix[2 - k][(k + n) % 3]
        som -= product
    
    return som
