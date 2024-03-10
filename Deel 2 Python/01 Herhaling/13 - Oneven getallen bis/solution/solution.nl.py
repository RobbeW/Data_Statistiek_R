# invoer
getal1 = int( input( 'a = ' ) )
getal2 = int( input( 'b = ' ) )

if getal1 <= getal2:
    a = getal1
    b = getal2
else:
    a = getal2
    b = getal1

# verwerking
aantal = 0
for getal in  range( a+1, b ):
    if getal % 2 != 0:
        print( getal )
        aantal += 1

# uitvoer
if aantal == 1:
    print( "Tussen", a, "en", b, "is er slechts één oneven getal."  ) 
elif aantal == 0:
    print( "Tussen", a, "en", b, "zijn er geen oneven getallen."  ) 
else:
    print( "Tussen", a, "en", b, "zijn er", aantal, "oneven getallen."  ) 
