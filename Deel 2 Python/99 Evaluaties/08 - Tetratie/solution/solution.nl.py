# Invoer
a = int( input( 'Geef een getal in: ' ) )
n = int( input( 'Geef een rangnummer in: ' ) )

# Uitvoer en berekeningen
macht = 1
for i in range(n):
    macht = a**macht

print(a, "￪￪",n, "is gelijk aan", macht)
