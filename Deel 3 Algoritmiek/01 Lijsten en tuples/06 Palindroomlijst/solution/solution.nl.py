def is_palindroom(lijst):
    n = len(lijst)
    waarde = True
    i = 0
    while waarde and i < n // 2:
        if lijst[i] != lijst[n - 1 - i]:
            waarde = False
        i += 1
    
    return waarde
