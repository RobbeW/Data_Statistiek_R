def bloemenperk(lijst, aantal):
    n = len(lijst)
    tel = 0
    i = 0
    while i < n:
        if lijst[i] == 0:
            if i == 0: 
                if lijst[i + 1] == 0:
                    tel += 1
                    lijst[i] = 1
            elif i == n - 1:
                if lijst[i - 1] == 0:
                    tel += 1
                    lijst[i] = 1
            else:
                if lijst[i + 1] == lijst[i - 1] == 0:
                    tel += 1
                    lijst[i] = 1
        i += 1

    return aantal <= tel
