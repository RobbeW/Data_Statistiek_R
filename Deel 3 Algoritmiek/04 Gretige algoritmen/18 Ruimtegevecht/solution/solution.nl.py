def ruimte(schepen, plan):
    plan.sort()
    
    i = 0
    while i < len(plan) and  schepen > plan[i]:
        schepen -= (plan[i] + 1)
        i  += 1
    
    return i
