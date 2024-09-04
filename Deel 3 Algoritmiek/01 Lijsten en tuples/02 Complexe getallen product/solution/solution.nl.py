def product_complex(getal1, getal2):
    a = getal1[0]*getal2[0] - getal1[1]*getal2[1]
    b = getal1[0]*getal2[1] + getal1[1]*getal2[0]
    return (a, b)
