def verwissel(lijst):
    n = len(lijst)
    nieuw = []
    for i in range(len(lijst)):
        if i % 2 == 0:
            if i + 1 < n:
                nieuw.append(lijst[i+1])
            nieuw.append(lijst[i])

    return nieuw
