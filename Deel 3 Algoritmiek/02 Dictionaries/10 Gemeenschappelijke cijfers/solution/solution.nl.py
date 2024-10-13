def gemeenschappelijk(lijst1, lijst2):
    dict1 = {}
    for item in lijst1:
        if item in dict1:
            dict1[item] += 1
        else:
            dict1[item] = 1
    
    dict2 = {}
    for item in lijst2:
        if item in dict2:
            dict2[item] += 1
        else:
            dict2[item] = 1
    
    gemeen = []
    for key in dict1:
        if key in dict2:
            n = min(dict1[key], dict2[key])
            for _ in range(n):
                gemeen.append(key)
        
    return sorted(gemeen)
