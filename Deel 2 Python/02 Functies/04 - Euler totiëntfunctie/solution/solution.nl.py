def ggd( getal1, getal2 ):
    grootste = max(getal1, getal2)
    kleinste = min(getal1, getal2)
    
    rest = grootste % kleinste
    while rest != 0:
        grootste = kleinste
        kleinste = rest
        rest = grootste % kleinste
    return kleinste

def phi(getal):
    aantal = 0
    for i in range( 1 , getal):
        if ggd( i, getal) == 1:
            aantal += 1
    return aantal

# Invoer
getal = int( input( 'Geef een getal in: ' ) )

# Berekening
uitkomst = phi(getal)

# Uitvoer
print("De totiëntfunctiewaarde van", getal, "is", uitkomst)
