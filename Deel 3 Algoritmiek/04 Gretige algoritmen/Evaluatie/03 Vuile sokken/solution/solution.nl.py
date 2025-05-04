def aantal_machines(n, v, kousen):
    
    kousen.sort()

    # aantal machines
    m = 1

    i = 0
    waslijst = [kousen[0]]
    while i + 1 < len(kousen):
        i += 1
        if len(waslijst) < n and (kousen[i] - waslijst[0]) <= v:
            waslijst.append(kousen[i])
        else:
            waslijst = [kousen[i]]
            m += 1

    return m
