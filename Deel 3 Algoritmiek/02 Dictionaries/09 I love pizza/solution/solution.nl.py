def pizza(ingredienten):
    aantal = 0
    dict = {"M":0, "A":0, "R":0, "G":0, "H":0, "E":0, "I":0, "T":0}
    for ing in ingredienten:
        if ing in dict:
            dict[ing] += 1
            
    dict["A"] //= 2
    dict["R"] //= 2
    
    mini = dict["A"]
    for key, value in dict.items():
        if value < mini:
            mini = value
        
    return mini
