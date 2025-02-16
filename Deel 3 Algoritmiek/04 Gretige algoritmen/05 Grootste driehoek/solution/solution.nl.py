def vormt_driehoek(a, b, c):
    return a + b > c and b + c > a and a + c > b

def grootste_omtrek(zijden):
    som = 0
    zijden.sort(reverse = True)
    i = 2
    while i < len(zijden) and som == 0:
        a = zijden[i - 2]
        b = zijden[i - 1]
        c = zijden[i]
        if vormt_driehoek(a, b, c):
            som = a + b + c
        i += 1
    
    return som
