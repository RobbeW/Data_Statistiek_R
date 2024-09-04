def programmeertalen(lijst):
    dict = {}
    for taal in lijst:
        if taal in dict:
            dict[taal] += 1
        else:
            dict[taal] = 1
    return dict
