# 1. De variabele maken voor de jaren:
jaren <- c(2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016, 2017, 2018, 2019, 2020, 2021, 2022, 2023)

# 2. Variabelen aanmaken voor het aantal langdurig zieken:
aantal_zieken <- c(250000, 266667, 283334, 300001, 316668, 333335, 350002, 366669, 383336, 400003, 416670, 433337, 450004, 466671, 483338, 500005)

# 3. Totale aantal verloren arbeidsjaren door ziekte berekenen:
totaal_zieken <- sum(aantal_zieken)

# 4. Resultaten weergeven:
print(totaal_zieken)
