V = 33
p = 0.05

# Invoer van het gegeven
n = int( input( 'Geef het aantal consumpties in: ' ) )
m = int( input( 'Geef de massa in (in kg): ' ) )
t = float( input( 'Geef de tijd in (in uren): ' ) )
geslacht = input( 'Geef het geslacht in [M/V]: ')

# Berekening
if geslacht == "M":
    r = 0.68
else:
    r = 0.55

bac = n * V * p * 8 * 1.055 / ( r * m ) - t * 0.17

# Kan niet negatief zijn
if bac <= 0:
    bac = 0

# Uitvoer
print( 'Je bloed alcohol concentratie wordt geschat op:', round(bac, 3), 'promille.')
if bac >= 0.5:
    print( 'Je mag NIET rijden!' )
