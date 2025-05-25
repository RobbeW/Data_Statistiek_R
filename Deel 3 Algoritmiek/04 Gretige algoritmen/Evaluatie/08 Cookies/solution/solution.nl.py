def maximale_koeken(gulzigheid, koeken):
    gulzigheid.sort(reverse = True)
    koeken.sort(reverse = True)
    
    i = 0
    j = 0
    aantal = 0
    while i < len(gulzigheid) and j < len(koeken):
        if koeken[j] >= gulzigheid[i]:
            aantal += 1
            i += 1
            j += 1
        else:
            i += 1
    
    return aantal
 