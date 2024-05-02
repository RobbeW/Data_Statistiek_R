def meetkundig_gemiddelde( a, b, c ):
    resultaat = (a*b*c)**(1/3)
    return round(resultaat, 2)


# Invoer
x = float( input( 'Geef een getal in: ' ) )
y = float( input( 'Geef een getal in: ' ) )
z = float( input( 'Geef een getal in: ' ) )

# Berekening
uitkomst = meetkundig_gemiddelde( x, y, z )

# Uitvoer
print("Het meetkundig gemiddelde is", uitkomst)
