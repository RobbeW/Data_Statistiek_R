def saboteur(goudstukken, aantal):
    goudstukken.sort(reverse = True)
    resultaat = [0] * aantal

    for i in range(len(goudstukken)):
        resultaat[i % aantal] += goudstukken[i]

    return resultaat
