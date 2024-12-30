def aantal_vers(matrix):
    aantal = 0
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            el = matrix[r][c]
            if el == 1:
                aantal += 1
    return aantal

def stap(matrix):
    # 0: empty, 1: fresh, 2: rotten
    new = []
    for r in range(len(matrix)):
        row = [0] * len(matrix[0])
        new.append(row)
    
    for r in range(len(matrix)):
        for c in range(len(matrix[0])):
            el = matrix[r][c]
            if el == 1:
                if r > 0 and matrix[r  -1][c] == 2:
                    new[r][c] = 2
                elif r < len(matrix) - 1 and matrix[r + 1][c] == 2:
                    new[r][c] = 2
                elif c > 0 and matrix[r][c - 1] == 2:
                    new[r][c] = 2
                elif c < len(matrix[0]) - 1 and matrix[r][c +1] == 2:
                    new[r][c] = 2
                else:
                    new[r][c] = 1
            elif el == 2:
                new[r][c] = 2
    return new

def rot_fruit(rooster):
    count = aantal_vers(rooster)
    i = 0
    if count > 0:
        while True:
            new = stap(rooster)
            i += 1
            count = aantal_vers(new)
            if count == 0: # none remaining
                break
            elif new == rooster: # no change after a step
                i = -1
                break
            rooster = new

    return i
