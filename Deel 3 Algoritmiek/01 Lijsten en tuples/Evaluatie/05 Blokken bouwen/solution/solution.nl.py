def blokken(lijst):
    n = len(lijst)
    sum = 0
    for getal in lijst:
        sum += getal
    mean = sum // n
    
    count = 0
    for height in lijst:
        count += abs(height - mean)
    
    return count // 2
