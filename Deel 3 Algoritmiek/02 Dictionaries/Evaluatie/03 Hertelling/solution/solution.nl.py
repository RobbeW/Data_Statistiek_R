def hertelling(stemmen):
    dict = {}
    for stem in stemmen:
        if stem in dict:
            dict[stem] += 1
        else:
            dict[stem] = 1
    
    max = 0
    aantal_max = 0
    for naam, aantal in dict.items():
        if aantal > max:
            max = aantal
            leider = naam
            aantal_max = 1
        elif aantal == max:
            aantal_max += 1
    
    if aantal_max > 1:
        tekst = "Hertelling!"
    else:
        tekst = leider
    return tekst
