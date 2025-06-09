def zandloper_som(grid, i, j):
    som = grid[i + 1][j + 1]
    for t in range(3):
        som += grid[i][j + t]
        som += grid[i + 2][j + t]
    return som

def zandloper(rooster):
    maxi = zandloper_som(rooster, 0, 0)
    for i in range(len(rooster) - 2):
        for j in range(len(rooster[0]) - 2):
            som = zandloper_som(rooster, i, j)
            if som > maxi:
                maxi = som
    return maxi