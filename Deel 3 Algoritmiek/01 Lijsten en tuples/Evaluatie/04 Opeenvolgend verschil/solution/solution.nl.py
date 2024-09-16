def opeenvolgend_verschil(lijst):
    n = len(lijst)
    nieuw = []
    for i in range(1, n):
        nieuw.append( lijst[i] - lijst[i - 1])
    
    return nieuw
