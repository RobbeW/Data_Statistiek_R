def snoep_eten(snoeplijst):
    snoep = {}
    for snoepje in snoeplijst:
        if snoepje in snoep:
            snoep[snoepje] += 1
        else:
            snoep[snoepje] = 1

    max_aantal = len(snoeplijst) // 2
    aantal = min(max_aantal, len(snoep))
    
    return aantal
