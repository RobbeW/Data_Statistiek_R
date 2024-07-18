import math

# Zijde vragen
a = float( input( 'Geef de zijde in (in cm): ' ) )

# Volume berekenen
R = math.sqrt(6) / 4 * a
r = math.sqrt(6) / 12 * a

V = 4/3*math.pi * (R**3 - r**3)

# Weergeven op het scherm
print( "Het volume tussen de omgeschreven en ingeschreven bol bedraagt", round(V, 3), "cm³.")

