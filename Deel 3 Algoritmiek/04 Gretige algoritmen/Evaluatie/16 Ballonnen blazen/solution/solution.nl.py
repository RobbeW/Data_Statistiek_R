def ballon(kannen):
    concentratie = 1
    kannen.sort()
    n = len(kannen)
    
    i = 0
    while i < n:
        kan = kannen[i]
        i += 1
        if kan > i:
            concentratie = -1
            break
        if kan / i < concentratie:
            concentratie = kan / i

    if concentratie == -1:
        return "knal!"
    else:
        return round(concentratie, 6)
