def deellijst(lijst):
    if sum(lijst) % 3 != 0:
        return False
    
    i = 0
    target = sum(lijst) // 3
    som = 0
    aantal_partities = 0
    while i < len(lijst):
        som += lijst[i]
        if som == target:
            som = 0
            aantal_partities += 1
        i += 1
    
    return aantal_partities >= 3
 