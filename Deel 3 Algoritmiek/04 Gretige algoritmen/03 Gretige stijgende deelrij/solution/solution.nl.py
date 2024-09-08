def gretig_stijgend(rij):
    deelrij = [rij[0]]
    for i in range(1, len(rij)):
        element = rij[i]
        if element > deelrij[len(deelrij) - 1]:
            deelrij.append(element)
    
    return deelrij
