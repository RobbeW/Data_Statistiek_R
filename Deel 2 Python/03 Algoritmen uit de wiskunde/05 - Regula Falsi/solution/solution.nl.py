def regula_falsi( a: float , b: float, f: float, toleratie: float) -> float:
    flag = True
    i = 0
    while flag:
        c = a - f( a ) * ( b - a )/( f( b ) - f( a ) )
        if f( c ) * f( a ) < 0:
            b = c
        elif f( c ) * f( b ) < 0:
            a = c
        else: # f( c ) == 0
            a = c
            b = c
        flag = abs( f( c ) ) > toleratie or i == 50
        i += 1
        print(f"In iteratie {i} is de benadering: {round(c, 15)}")
    return round( c, 15 )