def helderheid( kleurcode ):
    R, G, B = kleurcode
    R /= 255
    G /= 255
    B /= 255
    waarde = 1/2*(max(R, G, B) + min(R, G, B))

    return round(waarde, 3)
