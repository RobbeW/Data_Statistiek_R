import math
# Invoer
radialen = float( input( 'Geef de hoek in radialen in: ' ) )

# Verwerking
graden = radialen / math.pi * 180

# Omzetten naar graden minuten en seconden
graden_afgerond = math.floor( graden )
rest = (graden - graden_afgerond)
minuten = rest * 60
min_afgerond = math.floor(minuten)
rest = (minuten - min_afgerond)
sec = round( rest * 60, 1)

# Weergave
print( 'Een hoek van', radialen, 'radialen is', round(graden, 6), 'graden, oftewel ', graden_afgerond, "graden", min_afgerond, "minuten en", sec, "seconden." )
