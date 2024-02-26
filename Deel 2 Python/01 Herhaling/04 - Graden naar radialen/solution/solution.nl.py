import math
# Invoer
graden = int( input( 'Geef de hoek in graden in: ' ) )

# Verwerking
rad = round( graden / 180 * math.pi, 4)

# Weergave
print( 'Een hoek van', graden, 'graden is gelijk aan', rad, 'radialen.' )
