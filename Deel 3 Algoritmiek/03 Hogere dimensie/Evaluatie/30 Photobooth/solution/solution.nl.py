def photobooth(rooster):   
    n = len(rooster)
    
    nieuw = []
    for r in range(n):
        rij = []
        for c in range(n):
            rij.append(0)
        nieuw.append(rij)
    
    for r in range(n):
        for c in range(n):
            element = rooster[r][c]
            if r % 2 == 0 and c % 2 == 0:
                nieuw[r // 2][c // 2] = element
            elif r % 2 == 0 and c % 2 != 0:
                nieuw[r // 2][(n + c) // 2] = element
            elif r % 2 != 0 and c % 2 == 0:
                nieuw[(n + r) // 2][c // 2] = element
            else:
                nieuw[(n + r) // 2][(n + c) // 2] = element
    
    return nieuw

def photobooth_herhaald(rooster, k):   
    for _ in range(k):
        rooster = photobooth(rooster)
    
    return rooster

