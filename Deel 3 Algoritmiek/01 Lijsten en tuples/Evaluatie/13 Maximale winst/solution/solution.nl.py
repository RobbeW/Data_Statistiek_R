def maximale_winst(bedrag, beurskoers):
    winst = 0
    
    for i in range(len(beurskoers) - 1):
        huidig = beurskoers[i]
        volgende = beurskoers[i+1]
        
        if volgende > huidig:
            aandelen = bedrag // huidig
            rest = bedrag % huidig
            winst += aandelen * (volgende - huidig)
            bedrag = aandelen * volgende + rest
    
    return winst
