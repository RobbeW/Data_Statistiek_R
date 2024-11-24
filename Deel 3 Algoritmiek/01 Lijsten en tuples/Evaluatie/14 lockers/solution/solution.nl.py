def lockers(aantal_lockers, aantal_lln):
    lockerlijst = []
    for _ in range(aantal_lockers):
        lockerlijst.append(0)
    
    for i in range(aantal_lln):
        rangnummer = i+1
        for j in range(aantal_lockers):
            if (j+1) % rangnummer == 0:
                lockerlijst[j] = 1 - lockerlijst[j]
                

    geopend = []
    for i in range(aantal_lockers):
        if lockerlijst[i] == 1:
            geopend.append(i+1)
    
    return geopend
