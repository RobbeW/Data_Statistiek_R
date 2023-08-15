## Gegeven

Je hebt gegevens gekregen over de lengte van spelers van een plaatselijk basketbalteam. Het is jouw taak om de gemiddelde lengte van deze spelers te bepalen met behulp van de programmeertaal R.

<table border="1">
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Materials Data</title>
    <style>
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            border: 1px solid #dddddd;
            padding: 8px 12px;
            text-align: left;
        }
        th {
            background-color: ;
        }
    </style>
</head>
    <thead>
        <tr>
            <th>Naam speler</th>
            <th>Lengte (in cm)</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>John Smith</td>
            <td>188</td>
        </tr>
        <tr>
            <td>Alex Brown</td>
            <td>192</td>
        </tr>
        <tr>
            <td>Mia Turner</td>
            <td>185</td>
        </tr>
        <tr>
            <td>Lucas White</td>
            <td>190</td>
        </tr>
        <tr>
            <td>Zoe Davis</td>
            <td>187</td>
        </tr>
    </tbody>
</table>


## Variabelen aanmaken in R (invoer)
Wanneer we deze gegevens uit de tabel willen omzetten in data die we kunnen verwerken via R-code, moeten we deze toekennen aan een variabele. 
Net zoals in andere programmeertalen zoals **Python** of **JavaScript** hebben variabelen volgende kenmerken: 
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

