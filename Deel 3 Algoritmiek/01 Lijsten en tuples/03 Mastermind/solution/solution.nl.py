def find_index(code, kleur):
    i = 0
    while i < len(code) and code[i] != kleur:
        i += 1
    return i

def mastermind(code, gok):
    r, s = 0, 0
    
    for i in range(len(gok)):
        if gok[i] == code[i]:
            r += 1
            gok[i] = "."
            code[i] = "."
    
    for i in range(len(gok)):
        if gok[i] in code and gok[i] != ".":
            j = find_index(code, gok[i])
            code[j] = "."
            s += 1
    
    return (r, s)
