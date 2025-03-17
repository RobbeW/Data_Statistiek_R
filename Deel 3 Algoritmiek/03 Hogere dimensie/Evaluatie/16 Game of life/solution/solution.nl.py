def aantal_levend(rooster, r, c):
    aantal = 0
    for i in range(r - 1, r + 2):
        for j in range(c - 1, c + 2):
            if 0 <= i < len(rooster) and 0 <= j < len(rooster[0]):
                aantal += rooster[i][j]
    
    # eigen cel werd tevel erbij geteld, deze er uit halen
    aantal -= rooster[r][c]
    
    return aantal

def game(rooster):
    nieuw = []
    
    for r in range(len(rooster)):
        rij = []
        for c in range(len(rooster[0])):
            aantal = aantal_levend(rooster, r, c)
            if aantal <= 1:
                waarde = 0
            elif aantal >= 4:
                waarde = 0
            elif aantal == 3:
                waarde = 1
            else:
                waarde = rooster[r][c]
            rij.append(waarde)
        nieuw.append(rij)
    
    return nieuw