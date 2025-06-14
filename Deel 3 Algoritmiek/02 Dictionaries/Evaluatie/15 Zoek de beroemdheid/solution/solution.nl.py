def zoek_beroemdheid(aantal, lijst):
    wrd = {}
    # deze dict bevat koppels [i, j]
    # i staat voor hoeveel mensen de persoon kent
    # j staat voor hoeveel mensen de persoon kennen
    
    for a, b in lijst:
        if a in wrd:
            wrd[a][0] += 1
        else:
            wrd[a] = [1, 0]
        if b in wrd:
            wrd[b][1] += 1
        else:
            wrd[b] = [0, 1]
    
    resultaat = -1
    for key, value in wrd.items():
        if value[0] == 0 and value[1] == aantal - 1:
            resultaat = key
    
    if aantal == 1:
        resultaat = 1
    
    return resultaat
