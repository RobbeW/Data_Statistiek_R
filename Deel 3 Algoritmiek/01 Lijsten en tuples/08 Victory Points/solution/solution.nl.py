def winnaar(n, puntenlijst):
    scores = [0] * n
    
    for i in range(len(puntenlijst)):
        scores[i % n] += puntenlijst[i]
    
    
    max_i = 0
    for i in range(1, n):
        if scores[i] >= scores[max_i]:
            max_i = i
    
    return max_i + 1
