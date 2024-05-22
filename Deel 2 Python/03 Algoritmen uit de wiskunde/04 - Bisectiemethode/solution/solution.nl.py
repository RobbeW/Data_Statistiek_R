def bisectiemethode( a, b, f ):
    for i in range(40):
        y_a = f(a)
        x_nieuw = (a + b) / 2
        y_nieuw = f(x_nieuw)
        if y_a*y_nieuw < 0:
            b = x_nieuw
        else:
            a = x_nieuw
        print(f"In iteratie {i+1} is de benadering: {round(x_nieuw, 15)}")
    return (a+b)/2