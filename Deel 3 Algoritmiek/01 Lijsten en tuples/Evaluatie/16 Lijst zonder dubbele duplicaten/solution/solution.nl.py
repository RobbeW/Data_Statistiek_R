def zonder_duplicaten(lijst):
    nieuw = [lijst[0]]
    opeenvolgend = 1
    for i in range(1, len(lijst)):
        element = lijst[i]
        prev = lijst[i-1]
        if element == prev and opeenvolgend == 1:
            nieuw.append(element)
            opeenvolgend += 1
        elif element != prev:
            nieuw.append(element)
            opeenvolgend = 1
        else:
            opeenvolgend += 1

    return nieuw
