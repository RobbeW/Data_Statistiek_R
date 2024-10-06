def gemiddelde(lijst):
    som = 0
    for getal in lijst:
        som += getal
    
    return round(som / len(lijst), 1)

def cinema(filmscores):
    new = {}
    for key, value in filmscores.items():
        gem = gemiddelde(value)
        new[key] = gem
        
    return new
