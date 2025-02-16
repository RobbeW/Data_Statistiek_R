def bepaal_laagste(kolom):
    # omvormen naar een dictionary
    telling = {}
    for char in kolom:
        if char in telling:
            telling[char] += 1
        else:
            telling[char] = 1
    
    laagste_aantal = len(kolom)
    laagste = "X"
    for char, aantal in telling.items():
        if aantal <= laagste_aantal:
            laagste_aantal = aantal
            laagste = char
    return laagste
    

def consensus(rooster):
    resultaat = []
    
    for c in range(len(rooster[0])):
        kol = []
        for r in range(len(rooster)):
            element = rooster[r][c]
            kol.append(element)
        char = bepaal_laagste(kol)
        resultaat.append(char)
    
    
    return resultaat

