def woorden_ritsen(woord1, woord2, doelwoord):
    dp = [[0] * (len(woord2) + 1) for _ in range(len(woord1) + 1)]
    
    for r in range(len(dp)):
        for c in range(len(dp[0])):
            if r == 0 == c:
                dp[0][0] = 1
            elif r == 0:
                if dp[0][c-1] == 1 and woord2[c-1] == doelwoord[c-1]:
                    dp[0][c] = 1
            elif c == 0:
                if dp[r-1][0] == 1 and woord1[r-1] == doelwoord[r-1]:
                    dp[r][0] = 1
            else:
                if dp[r-1][c] == 1 and woord1[r+c-1] == doelwoord[r+c-1]:
                    dp[r][c] = 1
                elif dp[r][c-1] == 1 and woord2[r+c-1] == doelwoord[r+c-1]:
                    dp[r][c] = 1    
    
    
    return dp[len(woord1)][len(woord2)]