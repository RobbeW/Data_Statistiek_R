def grootste_vierkant(rooster):
    maxi = 0
    
    # First, checking if there is a 1
    for r in range(len(rooster)):
        if max(rooster[r]) > maxi:
            maxi = max(rooster[r])
    
    
    for r in range(1,len(rooster)):
        for c in range(1, len(rooster[0])):
            if rooster[r-1][c]!=0 and  rooster[r][c-1] != 0 and rooster[r][c] == 1 and rooster[r-1][c-1] != 0:
                rooster[r][c] = min(rooster[r-1][c-1], rooster[r-1][c], rooster[r][c-1]) + 1
                if rooster[r][c] > maxi:
                    maxi = rooster[r][c]
    
    return maxi ** 2