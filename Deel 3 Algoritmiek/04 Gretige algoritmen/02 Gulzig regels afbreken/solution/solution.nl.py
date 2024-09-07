def rafeligheid(maximale_regellengte, woordenlijst):
    som = 0
    regellengte = 0
    for woord in woordenlijst:
        regellengte += len(woord)
        if regellengte > maximale_regellengte:
            # het woord was te lang, haal het er weer vanaf + de laatste spatie
            regellengte -= (len(woord) + 1)
            som += (maximale_regellengte - regellengte)**2
            regellengte = len(woord) + 1 # nieuwe regel beginnen
        else:
            # nog een spatie toevoegen
            regellengte += 1

    # laatste woord zorgt nog voor extra toevoegingen
    regellengte -= 1
    som += (maximale_regellengte - regellengte)**2
    
    return som
