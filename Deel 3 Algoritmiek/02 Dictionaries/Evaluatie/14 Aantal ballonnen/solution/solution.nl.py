def aantal_ballonnen(woord):
    karakters = {"b": 0,
                 "a": 0,
                 "l": 0,
                 "o": 0,
                 "n": 0}
    for char in woord:
        if char in karakters:
            karakters[char] += 1
    
    karakters["l"] //= 2
    
    kleinste = karakters["a"]
    for char, aantal in karakters.items():
        if aantal < kleinste:
            kleinste = aantal
        
    return kleinste
