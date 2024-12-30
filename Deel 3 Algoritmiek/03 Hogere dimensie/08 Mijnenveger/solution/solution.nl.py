def mijnenveger(veld):
    R = len(veld)
    C = len(veld[0])
    
    for r in range(R):
        for c in range(C):
            value = 0
            item = veld[r][c]
            
            if r > 0 and c > 0 and veld[r-1][c-1] == "X":
                value += 1
            if r > 0 and veld[r-1][c] == "X":
                value += 1
            if r > 0 and c < C - 1 and veld[r-1][c+1] == "X":
                value += 1
            
            if c > 0 and veld[r][c-1] == "X":
                value += 1
            if c < C - 1 and veld[r][c+1] == "X":
                value += 1
            
            if r < R - 1 and c > 0 and veld[r+1][c-1] == "X":
                value += 1
            if r < R - 1 and veld[r+1][c] == "X":
                value += 1
            if r < R - 1 and c < C - 1 and veld[r+1][c+1] == "X":
                value += 1

            if item != "X" and value != 0:
                veld[r][c] = value
    
    return veld