def afgeleide( a, f, delta ):
    h = 2
    benadering_oud = (f(a+h)-f(a))/h
    h /= 2
    benadering = (f(a+h)-f(a))/h
    i = 1
    print("In iteratie", i, "is de benadering:", round(benadering, 15))
    while abs(benadering-benadering_oud) > delta and i < 50:
        i += 1
        benadering_oud = benadering
        h /= 2
        benadering = (f(a+h)-f(a))/h
        print("In iteratie", i, "is de benadering:", round(benadering, 15))
    
    if i >= 50:
        return "Niet afleidbaar in dit punt"
    else:
        return benadering