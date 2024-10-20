def gewichtheffen(resultaten):
    max = 0
    naam = ""
    for key, value in resultaten.items():
        snatch = value[0]
        if value[1] != "-" and value[1] > snatch:
            snatch = value[1]
        if value[2] != "-" and value[2] > snatch:
            snatch = value[2]
            
        jerk = value[3]
        if value[4] != "-" and value[4] > jerk:
            jerk = value[4]
        if value[5] != "-" and value[5] > jerk:
            jerk = value[5]
        
        if snatch + jerk > max:
            max = snatch + jerk
            naam = key
            
    return naam
