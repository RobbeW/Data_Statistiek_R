def oxo(rooster):
    xwint = 0
    owint = 0
    for r in range(3):
        if rooster[r] == ["X", "X", "X"]:
            xwint +=1
        elif rooster[r] == ["O", "O", "O"]:
            owint += 1
        if rooster[0][r] == rooster[1][r] == rooster[2][r] == "X":
            xwint +=1
        if rooster[0][r] == rooster[1][r] == rooster[2][r] == "O":
            owint += 1
        
    if rooster[0][0] == rooster[1][1] == rooster[2][2] == "X":
        xwint +=1
    elif rooster[0][0] == rooster[1][1] == rooster[2][2] == "O":
        owint +=1
        
    if rooster[2][0] == rooster[1][1] == rooster[0][2] == "X":
        xwint +=1
    elif rooster[2][0] == rooster[1][1] == rooster[0][2] == "O":
        owint +=1
        
    if xwint == 1:
        result = "Speler X wint."
    elif owint == 1:
        result = "Speler O wint."
    else:
        result = "Geen winnaar."
    
    return result
