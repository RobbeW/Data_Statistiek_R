## Gegeven

Je hebt gegevens gekregen over de lengte van spelers van een plaatselijk basketbalteam. Het is jouw taak om de gemiddelde lengte van deze spelers te bepalen met behulp van de programmeertaal R.
| Naam speler  | Lengte (in cm) |
|--------------|----------------|
| John Smith   | 188            |
| Alex Brown   | 192            |
| Mia Turner   | 185            |
| Lucas White  | 190            |
| Zoe Davis    | 187            |

## Variabelen aanmaken in R (invoer)
Wanneer we deze gegevens uit de tabel willen omzetten in data die we kunnen verwerken via R-code, moeten we deze toekennen aan een variabele. 
Net zoals in andere programmeertalen zoals **Python** of **JaveScript** hebben variabelen volgende kenmerken: 
* een naam;
* een datatype. 

Zo kunnen we beginnen met de naam van de variabele
```
lengte
```

Vervolgens kennen we de data uit de tabel toe aan de variabele `lengte`. Dit doen we door de data om te zetten tot een `vector`. 
```
lengte <- c(n₁, n₂, ..., nₓ)
```

## Printen naar het scherm (uitvoer)
Net zoals bij die andere programmeertalen, moeten we de uitvoer van ons programma zichtbaar maken voor de eindgebruiker. Dit doen we via de `print-functie`. 
```
print(lengte)
```

{: .callout.callout-info}
>## Gevraagd: 
>
>Maak een `variabele` genaamd `lengte` aan; 
>Ken de gegevens uit de tabel toe aan de `variabele`; 
>Print de variabele naar het scherm met de `print-functie`. 

