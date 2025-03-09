def is_diagonaal_dominant(rooster):
    controle = True
    r = 0
    while controle and r < len(rooster):
        diag_element = abs(rooster[r][r])
        #som van de rest
        som = 0
        for c in range(len(rooster[0])):
            element = rooster[r][c]
            som += abs(element)
        som -= diag_element
        
        if som < diag_element:
            r += 1
        else:
            controle = False
        
    return controle
