def beste_rangschikking(quizploegen):
    plaatsen = []
    for i in range(len(quizploegen)):
        plaatsen.append(quizploegen[i][1])
    plaatsen.sort()
    
    score = 0
    for i in range(len(quizploegen)):
        score += abs(plaatsen[i] - (i + 1))

    return score
