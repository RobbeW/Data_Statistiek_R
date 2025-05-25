def aantal_wegen(rooster):
    nrow = len(rooster)
    ncol = len(rooster[0])
    
    temp = []
    for _ in range(nrow):
        temp.append([0]*ncol)
    
    for r in range(nrow):
        for c in range(ncol):
            if rooster[r][c] == 1:
                el = 0
            else:
                if r == 0 and c == 0:
                    el = 1
                elif r == 0:
                    el = temp[r][c-1]
                elif c == 0:
                    el = temp[r - 1][c]
                else:
                    el = temp[r - 1][c] + temp[r][c - 1]
            temp[r][c] =  el

    result = temp[nrow - 1][ncol - 1]
    return result

def aantal_via(rooster, co):
    # opsplitsen in 2 aparte roosters en nadien vermenigvuldigen
    
    R, C = co
    eerste = []
    for r in range(R + 1):
        rij = []
        for c in range(C + 1):
            rij.append(rooster[r][c])
        eerste.append(rij)
    
    tweede = []
    for r in range(R, len(rooster)):
        rij = []
        for c in range(C, len(rooster[0])):
            rij.append(rooster[r][c])
        tweede.append(rij)

    eerste_aantal = aantal_wegen(eerste)
    tweede_aantal = aantal_wegen(tweede)

    return eerste_aantal * tweede_aantal