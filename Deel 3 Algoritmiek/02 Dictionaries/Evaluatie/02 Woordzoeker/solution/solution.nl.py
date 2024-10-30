def aantal_woorden(letters, woorden):
    dict = {}
    for letter in letters:
        if letter in dict:
            dict[letter] += 1
        else:
            dict[letter] = 1
    
    aantal_woorden = 0
    for woord in woorden:
        # het woord omvormen naar een dictionary
        woord_tabel = {}
        for letter in woord:
            if letter in woord_tabel:
                woord_tabel[letter] += 1
            else:
                woord_tabel[letter] = 1
        
        bestaat = True
        for letter, aantal in woord_tabel.items():
            if letter not in dict:
                bestaat = False
            elif dict[letter] < aantal:
                bestaat = False
        
        if bestaat:
            aantal_woorden += 1
    
    return aantal_woorden
