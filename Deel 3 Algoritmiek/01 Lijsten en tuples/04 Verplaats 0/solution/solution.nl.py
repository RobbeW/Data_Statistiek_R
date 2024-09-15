def verplaats_nul(lijst):
    nieuw = []
    aantal = 0
    for item in lijst:
        if item != 0:
            nieuw.append(item)
        else:
            aantal += 1
    
    for i in range(aantal):
        nieuw.append(0)
    
    return nieuw
