import math

def afgeleide( a, f ):
    h = 2
    for i in range(20):
        h = h / 2
        benadering = (f(a+h)-f(a))/h
        print("In iteratie", i+1, "is de benadering:", round(benadering, 14))
    return benadering