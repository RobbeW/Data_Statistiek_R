def afgeleide( a, f ):
    h = 2
    benadering = (f(a+h)-f(a))/h
    for i in range(20):
        benadering_oud = benadering
        h = h / 2
        benadering = (f(a+h)-f(a))/h
        print("In iteratie", i+1, "is de benadering:", round(benadering, 15))
    
    if abs(benadering - benadering_oud) > 500:
        return "Niet afleidbaar in dit punt"
    else:
        return benadering