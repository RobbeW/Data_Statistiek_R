def controle(connector1, connector2):
    i = 0
    while i < len(connector1) and connector1[i] == 1 - connector2[i]:
        i += 1
    
    if i == len(connector1):
        waarde = "compatibel"
    else:
        waarde = "niet compatibel"

    return waarde
