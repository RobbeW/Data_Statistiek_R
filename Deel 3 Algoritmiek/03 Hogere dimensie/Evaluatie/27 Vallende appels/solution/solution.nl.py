def appels(rooster):   
    n_rows = len(rooster)
    n_cols = len(rooster[0])
    
    # aantal appels en grond tellen per kolom
    aantal_appels = []
    aantal_grond = []
    for c in range(n_cols):
        tela = 0
        telg = 0
        for r in range(n_rows):
            el = rooster[r][c]
            if el == "a":
                tela += 1
            elif el == "#":
                telg += 1
        aantal_appels.append(tela)
        aantal_grond.append(telg)
    
    # nieuw rooster maken
    nieuw = []
    for r in range(n_rows):
        rij = []
        for c in range(n_cols):
            rij.append(" ")
        nieuw.append(rij)
        
    # opvullen met grond en appels, van onder naar boven
    for c in range(n_cols):
        telg = aantal_grond[c]
        tela = aantal_appels[c]
        for r in range(telg + tela):
            if r < telg:
                el = "#"
            else:
                el = "a"
            nieuw[n_rows - 1 - r][c] = el
    
    return nieuw
