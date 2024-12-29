def toren(bord):
    for r in range(8):
        for c in range(8):
            el = bord[r][c]
            if el == "T":
                r_toren = r
                c_toren = c
    
    aantal = 0
    #check_above
    r = r_toren
    c = c_toren
    while r - 1 >= 0 and bord[r - 1][c] == " ":
        r -= 1
    if bord[r][c] == "p":
        aantal += 1
    
    #check below
    r = r_toren
    while r + 1 < 8 and bord[r + 1][c] == " ":
        r += 1
    if bord[r][c] == "p":
        aantal += 1
    
    #check right
    r = r_toren
    while c + 1 < 8 and bord[r][c + 1] == " ":
        c += 1
    if bord[r][c] == "p":
        aantal += 1
    
    #check left
    c = c_toren
    while c - 1 >=0 and bord[r][c - 1] == " ":
        c -= 1
    if bord[r][c] == "p":
        aantal += 1
    
    return aantal
