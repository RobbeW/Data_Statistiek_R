# invoer
a = int( input( 'a = ' ) )
b = int( input( 'b = ' ) )

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
