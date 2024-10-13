def frequentietabel(lijst):
    dict = {}
    for key in lijst:
        if key in dict:
            dict[key] += 1
        else:
            dict[key] = 1
        
    return dict
