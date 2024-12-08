def wisselgeld_mogelijk(biljetten):
    kassa = {5: 0,
             10: 0}
    mogelijk = True
    
    i = 0
    while mogelijk and i < len(biljetten):
        biljet = biljetten[i]
        if biljet == 5:
            kassa[5] +=1
        elif biljet == 10:
            if kassa[5] >= 1:
                kassa[5] -= 1
                kassa[10] += 1
            else:
                mogelijk = False
        elif biljet == 20:
            if kassa[5] >= 1 and kassa[10] >= 1:
                kassa[5] -= 1
                kassa[10] -= 1
            elif kassa[5] >= 3:
                kassa[5] -= 3
            else:
                mogelijk = False
        i += 1       
    
    return mogelijk
