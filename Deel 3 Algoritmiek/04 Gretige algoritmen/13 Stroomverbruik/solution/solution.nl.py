def maximale_stroom(devices):
    max = 0
    totale_aantal = 0
    for power, aantal in devices:
        totale_aantal += aantal
        if totale_aantal * power > max:
            max = totale_aantal * power
            
    return max
