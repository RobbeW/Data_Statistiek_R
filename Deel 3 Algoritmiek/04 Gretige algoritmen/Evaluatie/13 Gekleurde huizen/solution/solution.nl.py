def maximale_afstand(huizen):
    n = len(huizen)
    
    i = 0
    while i < n and huizen[n - 1 - i] == huizen[0]:
        i += 1
    maxiL = n - 1 - i
    
    i = 0
    while i < n and huizen[i] == huizen[n - 1]:
        i += 1
    maxiR = n - 1 - i
    
    maxi = max(maxiL, maxiR)
   
    return maxi
 