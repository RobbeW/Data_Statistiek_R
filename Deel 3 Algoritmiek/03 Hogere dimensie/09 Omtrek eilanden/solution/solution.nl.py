def omtrek_eiland(kaart):
    omtrek = 0
    aantal_r = len(kaart)
    aantal_c = len(kaart[0])
    
    
    for r in range(aantal_r):
        for c in range(aantal_c):
            cel = kaart[r][c]
            if cel == 1:
                omtrek += 4
                if r > 0 and kaart[r-1][c] == 1:
                    omtrek -= 1
                if r < aantal_r - 1 and kaart[r+1][c] == 1:
                    omtrek -= 1
                if c > 0 and kaart[r][c-1] == 1:
                    omtrek -= 1
                if c < aantal_c - 1 and kaart[r][c+1] == 1:
                    omtrek -= 1                   
    
    return omtrek