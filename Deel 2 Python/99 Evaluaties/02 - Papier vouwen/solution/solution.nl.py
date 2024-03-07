import math

# gegevens vragen
t = float( input( 'Geef de dikte in (in mm): ' ) )
n = int( input( 'Geef het aantal vouwen in: ' ) )

# Zijde berekenen
W = math.pi * t * 2**( 3*(n-1)/2 )

# Omzetten naar meters
W_in_m = math.ceil( W / 100 )

# Weergeven op het scherm
print( "De zijde van het blad papier moet minstens", W_in_m, "m meten." )
