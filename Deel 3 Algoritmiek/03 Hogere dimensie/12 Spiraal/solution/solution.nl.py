def spiraal(matrix):
    r = len(matrix)
    c = len(matrix[0])
    
    lijst= []
    
    x, y = 0, 0
    incrx, incry = 1, 0
    padx = [0,0]
    pady = [1,0]
    for i in range(r*c):
        el = matrix[y][x]
        lijst.append(el)
        if x == r - 1-padx[1] and incrx == 1:
            incrx, incry = 0, 1
            padx[1] += 1
        elif x == padx[0] and incrx == -1:
            incrx, incry = 0, -1
            padx[0] += 1
        elif y == c - 1 - pady[1] and incry == 1:
            incrx, incry = -1, 0
            pady[1] += 1
        elif y == pady[0] and incry == -1:
            incrx, incry = 1, 0
            pady[0] += 1
        
        x, y = x + incrx, y + incry
    
    return lijst
