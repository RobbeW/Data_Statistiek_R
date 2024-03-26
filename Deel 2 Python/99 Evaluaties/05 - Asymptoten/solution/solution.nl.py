# invoer
n = int(input())    #teller
m = int(input())    #noemer
a = float(input())  #teller
b = float(input())  #noemer

# soort asymptoot bepalen
if m > n:
    print("De x-as is een horizontale asymptoot.")
elif m == n:
    verhouding = a / b
    print("y =", round(verhouding, 4), "is de vergelijking van de horizontale asymptoot.")
elif m + 1 == n:
    verhouding = a / b
    print( round(verhouding, 4),"is de rico van de schuine asymptoot.")
else:
    print("Er is geen horizontale, noch een schuine asymptoot.")
