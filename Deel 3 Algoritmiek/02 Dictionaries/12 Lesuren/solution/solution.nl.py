def aantal_uur(richtingen):
    dict = {}
    for _, value in richtingen.items():
        for vak, uur in value:
            if vak in dict:
                dict[vak] += uur
            else:
                dict[vak] = uur
    return dict
