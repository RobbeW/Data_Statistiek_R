def is_monotoon(lijst):
    value = True
    
    prev = lijst[0]
    for i in range(1,len(lijst)-1):
        if lijst[i-1] != lijst[i]:
            prev = lijst[i-1]
        next = lijst[i+1]
        if prev < lijst[i] > next:
            value = False
        elif prev > lijst[i] < next:
            value = False

    return value
