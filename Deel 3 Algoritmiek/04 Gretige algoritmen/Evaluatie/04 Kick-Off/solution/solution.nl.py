def maximale_taken(studiewerk, stiltetijden):
    studiewerk.sort(reverse = True)
    stiltetijden.sort(reverse = True)
    
    taken = 0
    i = 0
    j = 0
    while i < len(studiewerk) and j < len(stiltetijden):
        werk = studiewerk[i]
        tijd = stiltetijden[j]
        if werk <= tijd:
            taken += 1
            i += 1
            j += 1
        else:
            i += 1

    return taken
