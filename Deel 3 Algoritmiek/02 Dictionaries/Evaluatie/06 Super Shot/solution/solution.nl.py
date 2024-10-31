def winnaar(scores):
    result = {}
    for voornaam, punten in scores:
        if voornaam in result:
            result[voornaam] += punten
        else:
            result[voornaam] = punten
    
    winnaars = []
    m = 0
    for voornaam, punten in result.items():
        if punten > m:
            m = punten
            winnaars = [voornaam]
        elif punten == m:
            winnaars.append(voornaam)
    
    return winnaars
