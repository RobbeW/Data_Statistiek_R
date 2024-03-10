# Invoer
a = float( input( 'Geef een waarde in:' ) )
b = float( input( 'Geef de volgende waarde in:' ) )

# Uitvoer en berekeningen
q = b / a
print( 1, ':', a )
print( 2, ':', b )
for i in range( 8 ):
    b = q * b
    print( i+3, ':', round(b, 2) )