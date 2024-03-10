# Invoer
n = int( input( 'Geef het aantal termen in: ' ) )

# Bepalen van de partieelsom
som = 0
for i in range(n):
    som += 1/(i+1)

# Uitvoer
if n == 1:
    print("De partieelsom met enkel de eerste term is:", round(som, 4))
else:
    print("De partieelsom van de eerste", n, "termen is:", round(som, 4))