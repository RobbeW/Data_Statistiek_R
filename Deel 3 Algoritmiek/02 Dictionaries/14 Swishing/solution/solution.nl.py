def kledijruil(kleerkast1, kleerkast2):
    dict1 = {}
    for kledij in kleerkast1:
        if kledij in dict1:
            dict1[kledij] += 1
        else:
            dict1[kledij] = 1

    dict2 = {}
    for kledij in kleerkast2:
        if kledij in dict2:
            dict2[kledij] += 1
        else:
            dict2[kledij] = 1

    aantal = 0
    for k, v in dict1.items():
        if k in dict2:
            aantal += min(v, dict2[k])
    
    return aantal
