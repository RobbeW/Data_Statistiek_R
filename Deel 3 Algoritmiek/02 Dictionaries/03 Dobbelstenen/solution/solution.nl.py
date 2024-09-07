def oppervlakte(l, b, h):
    result = 2 * (l * h + b * h + l * b)
    return result

def combinaties():
    opties = {}
    for l in range(1,7):
        for b in range(l,7):
            for h in range(b,7):
                opp = oppervlakte(l, b, h)
                if opp in opties:
                    opties[opp].append( (l, b, h))
                else:
                    opties[opp] = [(l, b, h)]
    return opties
