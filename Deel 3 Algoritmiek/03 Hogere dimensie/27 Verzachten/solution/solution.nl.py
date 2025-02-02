def stap(matrix, r, c):
    som = 0
    count = 0
    for i in range(3):
        for j in range(3):
            if 0 <= r + i - 1 < len(matrix) and 0 <= c + j -1 < len(matrix[0]):
                element = matrix[r + i - 1][c + j - 1]
                som += element
                count += 1
    
    gemiddelde = som / count
    return round(gemiddelde, 2)

def vervagen(matrix):
    nieuw = []
    for r in range(len(matrix)):
        rij = []
        for c in range(len(matrix[0])):
            element = stap(matrix, r, c)
            rij.append(element)
        nieuw.append(rij)
    return nieuw
