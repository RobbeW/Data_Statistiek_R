def getalsom( getal ):
    som = 0
    while getal > 0:
        cijfer = getal % 10
        som += cijfer
        getal = getal // 10
    
    return som


# Invoer
getal = int( input( 'Geef een getal in: ' ) )

# Berekening
uitkomst = getalsom( getal )

# Uitvoer
print("De getalsom is", uitkomst)