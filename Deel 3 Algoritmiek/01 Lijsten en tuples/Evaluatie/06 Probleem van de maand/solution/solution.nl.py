def problemen(S, gemaakt, nodig):
    nieuw = []
    for i in range(12):
        S += gemaakt[i]
        if S >= nodig[i]:
            nieuw.append("lukt")
            S -= nodig[i]
        else:
            nieuw.append("lukt niet")
    
    return nieuw
