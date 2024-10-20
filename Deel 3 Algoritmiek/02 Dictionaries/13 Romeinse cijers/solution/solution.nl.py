def romeins_naar_arabisch(tekst):
    r = {"I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000}
    waarde = r[tekst[0]]
    for i in range(1, len(tekst)):
        huidig = tekst[i]
        vorig = tekst[i - 1]
        if r[vorig] < r[huidig]:
            waarde -= r[vorig]
            waarde += (r[huidig] - r[vorig])
        else:
            waarde += r[huidig]
    return waarde
