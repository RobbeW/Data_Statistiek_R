def klik(rooster, r, c):
    rooster[r][c] = 1 - rooster[r][c]
    if r - 1 >= 0:
        rooster[r - 1][c] = 1 - rooster[r - 1][c]
    if r + 1 < len(rooster):
        rooster[r + 1][c] = 1 - rooster[r + 1][c]
    if c - 1 >= 0:
        rooster[r][c - 1] = 1 - rooster[r][c - 1]
    if c + 1 < len(rooster[0]):
        rooster[r][c + 1] = 1 - rooster[r][c + 1]
    return rooster

def lights(rooster, kliks):
    for cl in kliks:
        rooster = klik(rooster, cl[0], cl[1])
        
    return rooster
