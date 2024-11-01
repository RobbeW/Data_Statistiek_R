import math

def koeien(C, weilanden, dag):
    weien = {}
    for aantal in weilanden:
        if aantal in weien:
            weien[aantal] += 1
        else:
            weien[aantal] = 1
    
    for _ in range(dag):
        weien_nieuw = {}
        for D, aantal_weien in weien.items():
            D_nieuw = 2*D
            values = []
            if D_nieuw <= C: # niets te doen
                values.append((D_nieuw, aantal_weien))
            else:
                values.append((math.ceil(D_nieuw/2), aantal_weien))
                values.append((math.floor(D_nieuw/2), aantal_weien))

            # Toevoegen aan nieuwe dictionary
            for key, value in values:
                if key in weien_nieuw:
                    weien_nieuw[key] += value
                else:
                    weien_nieuw[key] = value
        weien = weien_nieuw
    
    
    aantal_weien = 0
    for _, aantal in weien.items():
        aantal_weien += aantal
    
    return aantal_weien
