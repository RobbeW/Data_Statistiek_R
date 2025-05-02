def optimale_beplanting(zaailingen):
    zaailingen.sort(reverse = True)
    
    maxi = zaailingen[0] + 1
    for i in range(1, len(zaailingen)):
        uiterste_dag = i + zaailingen[i] + 1
        if uiterste_dag > maxi:
            maxi = uiterste_dag

    return maxi + 1
