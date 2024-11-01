import math

def koeien(C, weilanden, dag):
    # looping solution
    for _ in range(dag):
        weilanden_nieuw = []
        for aantal in weilanden:
            nieuw = aantal*2
            if nieuw <= C:
                weilanden_nieuw.append(nieuw)
            else:
                weilanden_nieuw.append(math.floor(nieuw/2))
                weilanden_nieuw.append(math.ceil(nieuw/2))
    
    return len(weilanden)
