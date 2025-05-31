def truck_laden(lijst, maximaal_aantal_dozen):
    result = 0
    
    aantal_dozen = 0
    i = 0
    while aantal_dozen < maximaal_aantal_dozen and i < len(lijst):
        n_box, items = lijst[i]

        if aantal_dozen + n_box <= maximaal_aantal_dozen:
            aantal_dozen += n_box
            result += n_box * items
        else:
            result += items * (maximaal_aantal_dozen - aantal_dozen)
            aantal_dozen = maximaal_aantal_dozen               

        i += 1
   
    return result
 