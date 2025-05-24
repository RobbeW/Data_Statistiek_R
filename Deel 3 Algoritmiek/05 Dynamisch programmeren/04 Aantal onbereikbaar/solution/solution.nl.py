def aantal_onbereikbaar(rooster):
    nrow = len(rooster)
    ncol = len(rooster[0])
    
    temp = []
    for _ in range(nrow):
        temp.append([0]*ncol)

    aantal = 0
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
                    
                if el == 0:
                    aantal += 1
            temp[r][c] =  el

    return aantal