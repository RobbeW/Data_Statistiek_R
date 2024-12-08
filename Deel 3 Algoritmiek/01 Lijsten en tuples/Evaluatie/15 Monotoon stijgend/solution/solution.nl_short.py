def is_monotoon(lijst):
    diff = []

    for i in range(len(lijst)-1):
        diff.append(lijst[i+1] - lijst[i])
    

    if max(diff) * min(diff) < 0:
        value = False
    else:
        value = True

    return value
