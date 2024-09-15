def faro_shuffle(cards1, cards2):
    cards = []
    
    for i in range(len(cards1)):
        cards.append(cards1[i])
        cards.append(cards2[i])
    
    return cards
