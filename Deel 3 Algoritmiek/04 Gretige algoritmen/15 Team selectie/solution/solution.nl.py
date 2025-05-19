def samenstelling_team(scores):
    som = 0
    scores.sort(reverse = True)
    aantal_teams = len(scores) // 3
    for i in range(aantal_teams):
        som += scores[1 + i*3]
                    
    return som
