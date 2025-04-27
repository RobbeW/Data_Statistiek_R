def maximale_korting(prijzen):
    korting = 0
    n = len(prijzen)
    for i in range(n // 3):
        korting += prijzen[n - i * 3 - 3]
    
    return korting
