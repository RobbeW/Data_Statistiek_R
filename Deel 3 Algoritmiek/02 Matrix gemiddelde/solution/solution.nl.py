def gemiddelde_matrix(matrix):
    som = 0
    r = len(matrix)
    c = len(matrix[0])
    for rij in matrix:
        for el in rij:
            som += el
    gemiddelde = round(som / (r * c), 2)
    return gemiddelde      
