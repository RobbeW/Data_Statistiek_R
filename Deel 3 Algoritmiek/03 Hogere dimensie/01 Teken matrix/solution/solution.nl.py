def print_matrix(matrix):
    for rij in matrix:
        regel = ""
        for item in rij:
            regel += str(item) + " "
        print(regel)
        
