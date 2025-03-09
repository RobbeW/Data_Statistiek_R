def randsom(rooster):
    aantal_r = len(rooster)
    aantal_c = len(rooster[0])
    
    som = 0
    for r in range(aantal_r):
        if r == 0 or r == aantal_r-1:
            som += sum(rooster[r])
        else:
            som += rooster[r][0] + rooster[r][aantal_c-1]
        
    return som
