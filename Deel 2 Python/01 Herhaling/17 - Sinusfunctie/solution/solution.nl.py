import math

# invoer vragen
x_a = float(input( "Geef de eerste x-coördinaat in: " ) )
x_b = float(input( "Geef de tweede x-coördinaat in: " ) )

if x_b < x_a:
    temp = x_a
    x_a = x_b
    x_b = temp

# controle op nulpunten
print()
if abs(x_b - x_a) > math.pi:
    print("Er ligt minstens één nulpunt tussen", x_a, "en", x_b) 
else:
    y_a = math.sin(x_a)
    y_b = math.sin(x_b)
    if y_a * y_b < 0:
        print("Er ligt minstens één nulpunt tussen", x_a, "en", x_b) 
    else:
        print("Er ligt geen nulpunt tussen", x_a, "en", x_b) 
