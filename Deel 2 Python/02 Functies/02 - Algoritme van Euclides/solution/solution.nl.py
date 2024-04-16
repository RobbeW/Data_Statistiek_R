def ggd( getal1, getal2 ):
    grootste = max(getal1, getal2)
    kleinste = min(getal1, getal2)
    
    rest = grootste % kleinste
    while rest != 0:
        grootste = kleinste
        kleinste = rest
        rest = grootste % kleinste
    return kleinste

# Invoer
A = int( input( 'Geef een getal in: ' ) )
B = int( input( 'Geef een getal in: ' ) )

# Berekening
uitkomst = ggd( A, B )

# Uitvoer
print("De grootste gemene deler van", A, "en",B, "is", uitkomst)
