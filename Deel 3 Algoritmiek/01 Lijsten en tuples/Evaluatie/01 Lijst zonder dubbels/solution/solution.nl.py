def zonder_duplicaten(lijst):
    nieuw = [lijst[0]]
    for i in range(1, len(lijst)):
        item = lijst[i]
        if nieuw[len(nieuw) - 1] != item:
            nieuw.append(item)
    
    return nieuw
