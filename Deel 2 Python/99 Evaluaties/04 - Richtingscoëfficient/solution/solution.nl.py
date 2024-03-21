import math

# invoer
x1 = int(input())
y1 = int(input())
x2 = int(input())
y2 = int(input())

# rico uitrekenen
if x1 != x2:
    rico = round( ( y2 - y1 ) / ( x2 - x1 ), 2)
    print("De rico van de rechte door deze punten is", rico )
    if rico > 0:
        print("Deze rechte is stijgend.")
    elif rico < 0:
        print("Deze rechte is dalend.")
    else:
        print("Deze rechte is horizontaal.")
else:
    print("Deze rechte heeft geen rico!")
