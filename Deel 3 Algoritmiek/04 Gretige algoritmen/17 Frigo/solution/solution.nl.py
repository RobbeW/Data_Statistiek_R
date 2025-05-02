def frigo(cijfers):
    aantal_0 = 0
    dict = {1:0, 2:0, 3:0, 4:0, 5:0, 6:0, 7:0, 8:0, 9:0}
    for digit in cijfers:
        if digit != 0:
            dict[digit] += 1
        else:
            aantal_0 += 1

    min_key = 1
    min_val = dict[1]

    for digit, val in dict.items():
        if val < min_val:
            min_val = val
            min_key = digit
        if val == min_val and digit < min_key and digit != 0:
            min_key = digit

    if aantal_0 + 1 <= min_val:
        result = int("1"+"0"*(aantal_0+1))
    else:
        result = int(str(min_key) * (min_val+1))

    return result
