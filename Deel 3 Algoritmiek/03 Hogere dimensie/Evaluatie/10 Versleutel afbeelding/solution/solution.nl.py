def H(rooster):
    m = len(rooster)
    n = len(rooster[0])
    
    new = []
    for r in range(m):
        rij = []
        for c in range(n):
            new_c = (c + n - r) % n
            el = rooster[r][new_c]
            rij.append(el)
        new.append(rij)
    
    return new

def V(rooster):
    m = len(rooster)
    n = len(rooster[0])
    
    new = []
    for r in range(m):
        rij = []
        for c in range(n):
            new_r = (r + n - c) % m
            el = rooster[new_r][c]
            rij.append(el)
        new.append(rij)
    
    return new



def versleutel(rooster):
    # HVHV uitvoeren
    rooster = H(rooster)
    rooster = V(rooster)
    rooster = H(rooster)
    rooster = V(rooster)
    
    return rooster
