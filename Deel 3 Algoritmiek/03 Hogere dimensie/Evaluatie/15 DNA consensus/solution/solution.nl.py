def bepaal_hoogste(kolom):
    # omvormen naar een dictionary
    telling = {}
    for char in kolom:
        if char in telling:
            telling[char] += 1
        else:
            telling[char] = 1
    
    hoogste_aantal = telling[char]
    hoogste = char
    for char, aantal in telling.items():
        if aantal > hoogste_aantal:
            hoogste_aantal = aantal
            hoogste = char
    return hoogste
    

def consensus(rooster):
    resultaat = []
    
    for c in range(len(rooster[0])):
        kol = []
        for r in range(len(rooster)):
            element = rooster[r][c]
            kol.append(element)
        char = bepaal_hoogste(kol)
        resultaat.append(char)
    
    
    return resultaat

