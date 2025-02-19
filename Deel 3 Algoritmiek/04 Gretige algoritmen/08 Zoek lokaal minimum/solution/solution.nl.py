def lokaal_minimum(rooster, start):
    nrow = len(rooster)
    ncol = len(rooster[0])
    
    niet_gevonden = True
    r, c = start[0], start[1]
    kleinste = rooster[r][c]
    kleinste_r, kleinste_c = r, c
    while niet_gevonden:
        if r - 1 >= 0 and rooster[r-1][c] < kleinste:
            kleinste = rooster[r - 1][c]
            kleinste_r, kleinste_c = r - 1, c
        if c - 1 >= 0 and rooster[r][c - 1] < kleinste:
            kleinste = rooster[r][c - 1]
            kleinste_r, kleinste_c = r, c - 1
        if r + 1 < nrow and rooster[r + 1][c] < kleinste:
            kleinste = rooster[r + 1][c]
            kleinste_r, kleinste_c = r + 1, c
        if c + 1 < ncol and rooster[r][c + 1] < kleinste:
            kleinste = rooster[r][c + 1]
            kleinste_r, kleinste_c = r, c + 1
        
        if r == kleinste_r and c == kleinste_c:
            niet_gevonden = False
        else:
            r, c = kleinste_r, kleinste_c
            
    return kleinste
