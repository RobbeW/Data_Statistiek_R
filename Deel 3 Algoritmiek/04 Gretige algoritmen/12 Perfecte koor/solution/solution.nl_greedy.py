def perfecte_koor(toonhoogtes):
    n = len(toonhoogtes)

    if sum(toonhoogtes) % n != 0:
        return -1

    gem = sum(toonhoogtes) // n
    
    resultaat = 1
    i = 0
    j = n - 1
    while i < j:
        links = toonhoogtes[i]
        rechts = toonhoogtes[j]
        if gem - links < rechts - gem:
            resultaat += gem - links
            toonhoogtes[i] += (gem - links)
            toonhoogtes[j] -= (gem - links)
            i += 1
        elif gem - links > rechts - gem:
            resultaat += (rechts - gem)
            toonhoogtes[i] += rechts - gem
            toonhoogtes[j] -= rechts - gem
            j -= 1
        else:
            resultaat += rechts - gem
            toonhoogtes[i] += rechts - gem
            toonhoogtes[j] -= rechts - gem
            j -= 1
            i += 1        
    
    return resultaat
