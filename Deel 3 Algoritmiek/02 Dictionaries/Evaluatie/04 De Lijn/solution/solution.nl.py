def drukte_haltes(busnetwerk):
    haltes_dict = {}
    for lijnnr, haltes in busnetwerk.items():
        print(f"Checking {lijnnr}")
        for halte in haltes:
            if halte in haltes_dict:
                haltes_dict[halte] += 1
            else:
                haltes_dict[halte] = 1
    
    return haltes_dict
