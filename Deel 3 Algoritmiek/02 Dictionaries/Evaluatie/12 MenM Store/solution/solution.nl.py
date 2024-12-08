def kleuren_tellen(verpakkingen):
    kleuren = {}
    for snoepjes in verpakkingen.values():
        for snoepje in snoepjes:
            if snoepje in kleuren:
                kleuren[snoepje] += 1
            else:
                kleuren[snoepje] = 1
    
    return kleuren
