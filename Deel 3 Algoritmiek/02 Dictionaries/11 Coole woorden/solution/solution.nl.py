def cool(woord):
    tabel = {}
    for char in woord:
        if char in tabel:
            tabel[char] += 1
        else:
            tabel[char] = 1
    
    is_cool = True
    aantallen = []
    for sleutel in tabel:
        aantal = tabel[sleutel]
        if aantal in aantallen:
            is_cool = False
        else:
            aantallen.append(aantal)
        
    return is_cool
