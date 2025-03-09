def is_magisch(rooster):
    product = 1
    for i in range(len(rooster)):
        product *= rooster[i][0]

    controle = True
    # rijen controleren
    r = 1
    while r < len(rooster) and controle:
        product_temp = 1
        for c in range(len(rooster[0])):
            product_temp *= rooster[r][c]
        controle = controle and product_temp == product
        r += 1
    
    # kolommen controleren
    c = 0
    while c < len(rooster[0]) and controle:
        product_temp = 1
        for r in range(len(rooster)):
            product_temp *= rooster[r][c]
        controle = controle and product_temp == product
        c += 1
        
    # diagonalen controleren
    diag1 = 1
    diag2 = 1
    for r in range(len(rooster)):
        diag1 *= rooster[r][r]
        diag2 *= rooster[len(rooster) - r - 1][r]
    
    controle = controle and product == diag1 == diag2
        
    return controle
