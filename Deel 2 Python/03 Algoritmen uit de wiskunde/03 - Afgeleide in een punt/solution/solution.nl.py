def afgeleide( a, f, delta ):
    h = 4
    benadering_oud = (f(a+h)-f(a))/h
    h = h / 2
    benadering_nieuw = (f(a+h)-f(a))/h
    i = 1
    print("In iteratie", i, "is de benadering:", round(benadering_nieuw, 15))
    while abs(benadering_oud - benadering_nieuw) > delta and i < 100:
        h = h / 2
        benadering_oud = benadering_nieuw
        benadering_nieuw = (f(a+h)-f(a))/h
        i += 1
        print("In iteratie", i, "is de benadering:", round(benadering_nieuw, 15))
    return benadering_nieuw
