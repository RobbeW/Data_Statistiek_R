def maximale_gebalanceerd(lijst):
    aantal_L = 0
    aantal_R = 0
    result = 0
    for c in lijst:
        if c == "L":
            aantal_L += 1
        else:
            aantal_R += 1
        
        if aantal_L == aantal_R:
            result += 1
            aantal_R, aantal_L = 0,0
    
    return result
 