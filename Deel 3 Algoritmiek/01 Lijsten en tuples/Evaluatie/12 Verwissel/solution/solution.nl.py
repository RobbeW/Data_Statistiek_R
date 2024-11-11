def verwissel(lijst, i):
    n = len(lijst)
    for j in range(i, n - 1):
        x = lijst[j]
        y = lijst[j + 1]
        if x > y:
            lijst[j + 1] = x
            lijst[j] = y
    
    return lijst
