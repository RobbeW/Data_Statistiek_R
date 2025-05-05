def perfecte_koor(toonhoogtes):
    n = len(toonhoogtes)

    if sum(toonhoogtes) % n != 0:
        return -1

    gem = sum(toonhoogtes) // n
    
    resultaat = 1
    i = 0
    while toonhoogtes[i] < gem:
        resultaat += gem - toonhoogtes[i]
        toonhoogtes[i] = gem
        i += 1
    
    return resultaat
