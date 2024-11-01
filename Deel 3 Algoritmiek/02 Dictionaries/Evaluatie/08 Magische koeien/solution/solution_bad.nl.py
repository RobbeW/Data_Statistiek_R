import math

def koeien(C, weilanden, dag):
    # looping solution, grow the list each day, but this can grow nearly exponentially!
    for _ in range(dag):
        weilanden_nieuw = []
        for aantal in weilanden:
            nieuw = aantal*2
            if nieuw <= C:
                weilanden_nieuw.append(nieuw)
            else:
                weilanden_nieuw.append(math.floor(nieuw/2))
                weilanden_nieuw.append(math.ceil(nieuw/2))
        weilanden = weilanden_nieuw
    
    return len(weilanden)
