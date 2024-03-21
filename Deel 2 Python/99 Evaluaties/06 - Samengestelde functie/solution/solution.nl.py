import math

# invoer vragen
x_a = float(input( "Geef een x-coordinaat in: " ) )
x_b = float(input( "Geef een x-coordinaat in: " ) )

if x_b < x_a:
    temp = x_a
    x_a = x_b
    x_b = temp

y_a = x_a * math.sin(x_a)
y_b = x_b * math.sin(x_b)

# controle op nulpunten
if y_a * y_b < 0 or abs(x_a-x_b) >= math.pi or x_a <= 0 <= x_b:
    print("Er ligt minstens één nulpunt tussen", x_a, "en", x_b) 
else:
    print("Er ligt geen nulpunt tussen", x_a, "en", x_b) 

print("De kleinste x-coördinaat heeft beeld:", round( y_a, 5) )
print("De grootste x-coördinaat heeft beeld:", round( y_b, 5) )