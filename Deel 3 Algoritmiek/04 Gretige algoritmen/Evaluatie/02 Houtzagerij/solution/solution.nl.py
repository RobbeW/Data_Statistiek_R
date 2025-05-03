def gemiddelde_wachttijd(opdrachten):
    aantal_smurfen = len(opdrachten)
    taken = []
    for i in range(aantal_smurfen):
        som = 0
        opdracht = opdrachten[i]
        for j in range(len(opdracht)):
            som += opdracht[j]
        taken.append(som)

    taken.sort()
    
    tijd = taken[0]
    for i in range(1, aantal_smurfen):
        taken[i] += taken[i-1]
        tijd += taken[i]
    
    gemiddelde_tijd = round(tijd / aantal_smurfen, 6)       

    return gemiddelde_tijd
