# Invoer
n = int( input( 'Geef een rangnummer in: ' ) )

# Uitvoer en berekeningen
som = 0
for i in range(n+1 ):
    som += i**2

print("Het", n, "e piramidegetal is:", som)
