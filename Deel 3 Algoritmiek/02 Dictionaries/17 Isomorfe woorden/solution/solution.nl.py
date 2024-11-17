def is_isomorf(woord1, woord2):
    vertaling = {}
    gezien = []
    vertaalbaar = len(woord1) == len(woord2)
    if vertaalbaar:
        for i in range(len(woord1)):
            letter1 = woord1[i]
            letter2 = woord2[i]
            if letter1 not in vertaling:
                if letter2 in gezien:
                    vertaalbaar = False
                else:
                    vertaling[letter1] = letter2
                    gezien.append(letter2)
            else:
                if letter2 != vertaling[letter1]:
                    vertaalbaar = False
    
    return vertaalbaar
