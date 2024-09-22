def mango(maximum, maximum_soort, aantal_soort):
    is_mogelijk = "lukt"
    som = 0
    for i in range(len(maximum_soort)):
        som += aantal_soort[i]
        if aantal_soort[i] > maximum_soort[i]:
            is_mogelijk = "lukt niet"
    
    if som > maximum:
        is_mogelijk = "lukt niet"

    return is_mogelijk
