def minimaal_scalair_product(a, b):
    a.sort()
    b.sort(reverse = True)
    
    resultaat = 0
    for i in range(len(a)):
        resultaat += a[i] * b[i]
            
    return resultaat
