def som(rooster, r, c):
    resultaat = 0
    for i in range(r, r + 2):
        for j in range(c, c + 2):
            resultaat += rooster[i][j]

    return resultaat

def sujiko(rooster, controlerooster):
    controle = True
    
    for r in range(len(rooster)-1):
        for c in range(len(rooster[0])-1):
            samen = som(rooster, r, c)
            if samen != controlerooster[r][c]:
                controle = False  
        
    return controle
