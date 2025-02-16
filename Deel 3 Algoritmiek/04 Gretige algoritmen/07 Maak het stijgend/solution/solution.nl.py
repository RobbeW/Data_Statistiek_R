def minimale_toevoegingen(getallen):
    aantal = 0
    for i in range(1, len(getallen)):
        if getallen[i - 1] >= getallen[i]:
            verschil = getallen[i - 1] - getallen[i]
            aantal += verschil + 1 
            getallen[i] = getallen[i - 1] + 1
    
    return aantal
