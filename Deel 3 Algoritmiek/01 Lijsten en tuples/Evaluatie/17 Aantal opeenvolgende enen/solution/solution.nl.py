def zoek_max_aantal_enen(binair):
    if binair[0] == 0:
        count = 0
        max_count = 0
    else:
        count = 1
        max_count = 1
        
    for i in range(1, len(binair)):
        if binair[i] == binair[i-1] == 1:
            count += 1
            if count > max_count:
                max_count = count
        elif binair[i] == 1:
            count = 1
            if count > max_count:
                max_count = count
        else:
            count = 0
    
    return max_count
