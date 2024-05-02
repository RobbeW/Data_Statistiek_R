def kwadrant( x, y ):
    if x > 0 and y > 0:
        result = "I"
    elif x < 0 and y > 0:
        result = "II"
    elif x < 0 and y < 0:
        result = "III"
    elif x > 0 and y < 0:
        result = "IV"
    else:
        result = 0
    return result


# Invoer
x = int( input( 'Geef een getal in: ' ) )
y = int( input( 'Geef een getal in: ' ) )

# Berekening
kwd = kwadrant( x, y)

# Uitvoer
if kwd == 0:
    print("Het punt (", x, ",", y, ") behoort tot geen enkel kwadrant.")
else:
    print("Het punt (", x, ",", y, ") behoort tot het", kwd, "e kwadrant.")
