def perfecte_koor(toonhoogtes):
    n = len(toonhoogtes)
    som = 0
    for toon in toonhoogtes:
        som += toon
    
    if som % n != 0:
        resultaat = -1
    else:
        gemiddelde = som // n
        resultaat = 0
        for toon in toonhoogtes:
            resultaat += abs(toon - gemiddelde)
        resultaat = resultaat // 2 + 1
    
    return resultaat
