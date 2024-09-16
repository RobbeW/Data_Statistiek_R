def verwissel(lijst):
    n = len(lijst)
    nieuw = []
    for i in range(0, len(lijst), 2):
        if i + 1 < n:
            nieuw.append(lijst[i+1])
        nieuw.append(lijst[i])

    
    return nieuw
