def aantal_studenten(keuzes):
    dict = {}
    
    for key in keuzes:
        vakken = keuzes[key]
        for vak in vakken:
            if vak in dict:
                dict[vak] += 1
            else:
                dict[vak] = 1

    return dict
