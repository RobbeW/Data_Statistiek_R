def ggd( getal1, getal2 ):
    grootste = max(getal1, getal2)
    kleinste = min(getal1, getal2)
    
    rest = grootste % kleinste
    while rest != 0:
        grootste = kleinste
        kleinste = rest
        rest = grootste % kleinste
    return kleinste

# Invoer
getal = int( input( 'Geef een getal in: ' ) )

# Berekening
for i in range(2, getal):
    aantal = 0
    if ggd(i, getal) != 1:
        aantal += 1
        print(i,"heeft een deler groter dan 1 gemeenschappelijk met", getal)

if aantal == 0:
    print("Er waren geen kleinere getallen die een deler groter dan 1 gemeenschappelijk hadden met", getal)
