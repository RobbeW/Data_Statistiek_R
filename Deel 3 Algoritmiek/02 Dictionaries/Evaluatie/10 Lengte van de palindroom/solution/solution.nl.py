def langste_palindroom(letters):
    telling = {}
    
    for letter in letters:
        if letter in telling:
            telling[letter] += 1
        else:
            telling[letter] = 1
    
    aantal = 0
    is_oneven = False
    for _, resultaat in telling.items():
        aantal += (resultaat // 2) * 2
        if resultaat % 2 == 1:
            is_oneven = True

    totale_aantal = aantal + is_oneven
    return totale_aantal
