def is_priem(getal):
    i = 2
    while getal % i != 0 and i < getal:
        i += 1
    return getal > 1 and i == getal

