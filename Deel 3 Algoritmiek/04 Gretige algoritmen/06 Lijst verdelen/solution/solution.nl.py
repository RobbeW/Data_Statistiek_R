def lijst_verdelen(getallen):
    # Sorteren van klein naar groot
    getallen.sort()
    
    # Groeperen per twee en het kleinste getal nemen
    som = 0
    for i in range(len(getallen) // 2):
        element = getallen[2 * i]
        som += element
    
    return som
