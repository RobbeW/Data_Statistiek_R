def halloween(bevraging):
    dict = {}
    for cost in bevraging:
        if cost in dict:
            dict[cost] += 1
        else:
            dict[cost] = 1
    
    mini = dict[cost]
    
    opties = []
    for costuum, aantal in dict.items():
        if aantal < mini:
            mini = aantal
            opties = [costuum]
        elif aantal == mini:
            opties.append(costuum)
    
    return opties
