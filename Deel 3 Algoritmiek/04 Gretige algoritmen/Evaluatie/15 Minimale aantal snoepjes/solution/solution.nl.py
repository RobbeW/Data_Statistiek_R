def minimale_snoep(scores):
    n = len(scores)
    links = [1]
    for i in range(n - 1):
        if scores[i] < scores[i + 1]:
            links.append(links[-1] + 1)
        else:
            links.append(1)
        
    rechts = [1]
    for i in range(n - 1):
        if scores[n - 1 - i] < scores[n - 2 - i]:
            rechts.append(rechts[-1] + 1)
        else:
            rechts.append(1)
    
    # take the highest:
    combineer = []
    for i in range(n):
        combineer.append(max(links[i], rechts[n - 1 - i]))
    
    total = sum(combineer)

    return total