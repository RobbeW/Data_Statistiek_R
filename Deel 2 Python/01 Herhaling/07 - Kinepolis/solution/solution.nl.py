# Invoer van het gegeven
leeftijd = int( input( 'Geef je leeftijd in: ' ) )
speeltijd = int( input( 'Geef de speeltijd in: ' ) )

# Berekening
prijs = 14.80
if leeftijd <= 18 or leeftijd >= 60:
    prijs = prijs - 1
    
if speeltijd > 2*60 + 15:
    prijs = prijs + 1

# Uitvoer
print( 'Je dient', round(prijs, 2), 'EUR te betalen.')
