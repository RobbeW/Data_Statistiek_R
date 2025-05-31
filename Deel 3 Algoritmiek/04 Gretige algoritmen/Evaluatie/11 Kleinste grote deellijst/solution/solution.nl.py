def kleinste_grote_deel(lijst):
    n = len(lijst)
    som = sum(lijst)
    
    lijst.sort(reverse = True)
    result = []
    temp = 0
    i = 0
    while i < n and temp <= (som - temp):
        temp += lijst[i]
        result.append(lijst[i])
        i += 1
    
    return result
 