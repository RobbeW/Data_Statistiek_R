a = int(input())
b = int(input())
c = int(input())

# orderenen van klein naar groot x <= y <= z
z = max(a,b,c)
x = min(a,b,c)
y = a + b + c - x - z

# Afdrukken van de correcte zin.
if z**2 == y**2 + x**2:
    print("De driehoek is rechthoekig.")
elif z**2 < y**2 + x**2:
    print("De driehoek is scherphoekig.")
else:
    print("De driehoek is stomphoekig.")


if x == y == z:
    print("De driehoek is gelijkzijdig.")
elif x == y or x == z or y == z:
    print("De driehoek is gelijkbenig.")
else:
    print("De driehoek is ongelijkbenig.")
