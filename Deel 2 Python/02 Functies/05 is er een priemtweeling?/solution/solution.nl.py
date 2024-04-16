def is_priem( getal ):
    priem = True
    for i in range(2, getal):
        if getal % i == 0:
            priem = False
    
    return priem

def priemtweeling( getal ):
    if is_priem( getal ):
        if is_priem( getal - 2) and is_priem( getal +2 ):
            print(f"Je kan twee priemtweelingen vinden van {getal} , namelijk {getal-2} en {getal+2}")
        elif is_priem( getal - 2):
            print(f"Je kan één priemtweeling vinden van {getal} , namelijk {getal-2}")
        elif is_priem( getal + 2):
            print(f"Je kan één priemtweeling vinden van {getal} , namelijk {getal+2}")
        else:
            print(f"Je kan geen priemtweeling vinden van {getal}")
    else:
        print(f"Je kan geen priemtweeling vinden van {getal}")

# Invoer vragen
getal = int(input( "Geef een getal in: " ) )
# Uitvoer
priemtweeling(getal)
