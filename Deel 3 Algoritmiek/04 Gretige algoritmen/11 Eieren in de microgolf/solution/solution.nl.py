def eieren_koken(max_aantal, max_massa, eieren):
    aantal = 0
    massa = 0
    i = 0
    while i < len(eieren) and aantal + 1 <= max_aantal and massa + eieren[i] <= max_massa:
        aantal += 1
        massa += eieren[i]
        i += 1
    
    return aantal
