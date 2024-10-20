def is_priem(getal):
    i = 2
    while getal % i != 0 and i < getal:
        i += 1
    return getal > 1 and i == getal

def goldbach():
    dict = {4: [(2,2)]}
    for getal in range(6, 1000, 2):
        for a in range(3, getal // 2 + 1):
            if is_priem(a) and is_priem(getal - a):
                if getal in dict:
                    dict[getal].append( (a, getal-a))
                else:
                    dict[getal] = [(a, getal-a)]
    return dict
