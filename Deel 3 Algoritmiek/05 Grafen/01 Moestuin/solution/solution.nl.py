def make_graph(tuin):
    lijst = []
    for r in range(len(tuin)):
        for c in range(len(tuin[0])):
            element = tuin[r][c]
            if r + 1 < len(tuin):
                next = tuin[r + 1][c] # below
                if element != next and (element, next) not in lijst and (next, element) not in lijst:
                    lijst.append((element, next))
            if c + 1 < len(tuin[0]):
                next = tuin[r][c + 1] # below
                if element != next and (element, next) not in lijst and (next, element) not in lijst:
                    lijst.append((element, next))
    return lijst

def equal_graph(graph1, graph2):
    flag = len(graph1) == len(graph2)
    i = 0
    while flag and i < len(graph1):
        element, next = graph1[i]
        if (element, next) not in graph2 and (next, element) not in graph2:
            flag = False
        i += 1 
    return flag

def moestuin(tuin1, tuin2):
    graph1 = make_graph(tuin1)
    graph2 = make_graph(tuin2)
    
    check = equal_graph(graph1, graph2)
    
    return check

