def is_magisch(rooster):
    som = sum(rooster[0])

    controle = True
    # rijen controleren
    r = 1
    while r < len(rooster) and controle:
        controle = controle and sum(rooster[r]) == som
        r += 1
    
    # kolommen controleren
    c = 0
    while c < len(rooster[0]) and controle:
        som_temp = 0
        for r in range(len(rooster)):
            som_temp += rooster[r][c]
        controle = controle and som_temp == som
        c += 1
        
    # diagonalen controleren
    diag1 = 0
    diag2 = 0
    for r in range(len(rooster)):
        diag1 += rooster[r][r]
        diag2 += rooster[len(rooster) - r - 1][r]
    
    controle = controle and som == diag1 == diag2
        
    return controle
