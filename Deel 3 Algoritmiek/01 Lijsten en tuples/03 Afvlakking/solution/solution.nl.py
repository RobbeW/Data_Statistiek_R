def aantal_vakjes(lijst):
    som = 0
    n = len(lijst)
    for j in range(1, n):
        if lijst[j] < lijst[j - 1]:
            som += lijst[j - 1] - lijst[j]
            lijst[j] = lijst[j - 1]
    
    return som
