def slaapplaats(plekken):
    j = 0
    while plekken[j] != "X":
        j += 1
    count = j
    maxi = 2 * count - 1
    for i in range(j, len(plekken)):
        char = plekken[i]
        if char == "X":
            if count > maxi:
                maxi = count
            count = 0
        elif i == len(plekken) - 1:
            count = 2*count + 1
            if count > maxi:
                maxi = count
        else:
            count += 1

    getal = (maxi - 1) // 2 
    return getal
