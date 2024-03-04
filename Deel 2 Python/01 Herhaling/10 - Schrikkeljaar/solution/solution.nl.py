# Invoer
jaartal = int( input( "Geef een jaartal in: " ) )

# Verwerking en uitvoer
if (jaartal % 4 == 0 and jaartal % 100 != 0) or jaartal % 400 == 0:
    print( 'Een schrikkeljaar' )
else:
    print( 'Geen schrikkeljaar' )
