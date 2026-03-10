def bisectiemethode(a, b, f):
    for i in range(40):
        nieuw = (a + b) / 2
        if f(a) * f(nieuw) < 0:
            b = nieuw
        elif f(a) * f(nieuw) > 0:
            a = nieuw
        else:
            print("In iteratie", i + 1, "is de benadering:", round(nieuw, 15))
            return nieuw
        print("In iteratie", i + 1, "is de benadering:", round(nieuw, 15))
    return nieuw