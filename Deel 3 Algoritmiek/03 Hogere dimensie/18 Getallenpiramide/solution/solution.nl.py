def bakstenen(muur):
    m = len(muur)
    
    for r in range(1, m, 2):
        rij = muur[r]
        for c in range(1, len(rij), 2):
            # calculate 'glue'
            el = muur[r - 1][c - 1]
            x = muur[r + 1][c - 1]
            y = muur[r + 1][c + 1]
            
            a = (el - x - y) // 2
            
            # fill in the wall
            muur[r][c] = y + a
            muur[r][c - 1] = x + a
            muur[r + 1][c] = a
    
    return muur
