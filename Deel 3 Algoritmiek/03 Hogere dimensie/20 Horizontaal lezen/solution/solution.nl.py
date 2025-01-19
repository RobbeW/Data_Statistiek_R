def horizontaal(mat):
    lijst = []
    
    for r in range(len(mat)):
        for c in range(len(mat[r])):
            el = mat[r][c]
            lijst.append(el)

    return lijst
