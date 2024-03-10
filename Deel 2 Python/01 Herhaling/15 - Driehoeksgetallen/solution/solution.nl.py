# Invoer
n = int( input( 'Geef een rangnummer in: ' ) )

# Uitvoer en berekeningen
getal = 0
for i in range(n+1 ):
    getal += i

print()
print("Het", n, "e driehoeksgetal is:", getal)