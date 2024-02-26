import math

# Invoer van het gegeven
z = float( input( 'Geef de lengte van de zijde in (in cm):' ) )

# Berekening
A = round( (math.pi/6 - math.sqrt(3)/4) * z **2, 3 )

# Uitvoer
print( 'Oppervlakte:', A, 'cm²')
