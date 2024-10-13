def gesorteerd(lijst):
    waarde = True
    is_stijgend = lijst[0] < lijst[1]
    for i in range(len(lijst)-1):
        if is_stijgend:
            if lijst[i+1] <= lijst[i]:
                waarde = False
        else:
            if lijst[i+1] >= lijst[i]:
                waarde = False

    return waarde
