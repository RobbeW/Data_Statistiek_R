def zoek_lijst(stijgend_dalend):
    n = len(stijgend_dalend)
    result = []
    i = 0
    j = n
    
    for k in range(n):
        if stijgend_dalend[k] == "👍":
            result.append(i)
            i += 1
        else:
            result.append(j)
            j -= 1
    result.append(i)
    
    return result
 