# This solution is too slow...

def frigo(cijfers):
    dict = {}
    for digit in cijfers:
        if digit in dict:
            dict[digit] += 1
        else:
            dict[digit] = 1
    
    i = 1
    while True:
        not_possible = False
        num = list(map(int, str(i)))
        new_dict = {}
        for digit in num:
            if digit in new_dict:
                new_dict[digit] += 1
            else:
                new_dict[digit] = 1
    
        for digit, value in new_dict.items():
            if digit not in dict or dict[digit] < value:
                not_possible = True

        if not_possible:
            return i
        i += 1
    
