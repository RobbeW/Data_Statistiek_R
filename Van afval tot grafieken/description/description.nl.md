## Gegeven:

Hieronder vind je een tabel met allerlei soorten huishoudelijk afval. 

<!DOCTYPE html>
<html lang="en">
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
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Materialen</th>
            <th>Gewicht (in miljoenen tonnen)</th>
            <th>Percentage van het totaal</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Voedselresten</td>
            <td>25.9</td>
            <td>11.2%</td>
        </tr>
        <tr>
            <td>Glas</td>
            <td>12.8</td>
            <td>5.5%</td>
        </tr>
        <tr>
            <td>Metalen</td>
            <td>18</td>
            <td>7.8%</td>
        </tr>
        <tr>
            <td>Papier & karton</td>
            <td>86.7</td>
            <td>37.4%</td>
        </tr>
        <tr>
            <td>Plastic</td>
            <td>24.7</td>
            <td>10.7%</td>
        </tr>
        <tr>
            <td>Rubber</td>
            <td>15.8</td>
            <td>6.8%</td>
        </tr>
        <tr>
            <td>Hout</td>
            <td>12.7</td>
            <td>5.5%</td>
        </tr>
        <tr>
            <td>Tuinafval</td>
            <td>27.7</td>
            <td>11.9%</td>
        </tr>
        <tr>
            <td>Overige</td>
            <td>7.5</td>
            <td>3.2%</td>
        </tr>
    </tbody>
    <tfoot>
        <tr>
            <th>Totaal</th>
            <th>231.9</th>
            <th>100.0%</th>
        </tr>
    </tfoot>
</table>

</body>
</html>

{: .callout.callout-info}
>## Gevraagd:
>* Maak een `som`van alle materialen; 
>* Opgelet: deze zijn reeds afgerond, dus er kunnen **afrondingsfouten** ontstaan; 
>* Maak een **staafdiagram** van de **percentages**; 
>* Een diagram kan een duidelijker beeld geven van de verhoudingen; 
>* Maak een taartdiagram van de percentages; 
>* Vergelijk tenslotte de leesbaarheid van de staafdiagrammen versus het taartdiagram. 

## Invoer:
De volgende elementen helpen je op weg: 

```
# Data
materialen <- c("Voedselresten", "Glas", "Metalen", ...)
gewicht <- c(25.9, 12.8, 18, ...)
percentage <- c(11.2, 5.5, 7.8, ...) / 100

```

## Uitvoer: 

### Som
De syntax om de som te berekenen gaat als volgt:
```
naam_variabele_X <- sum(naam_variabele_Y)
of
totale_gewicht <- sum(gewicht)
```

### Grafieken
#### Staafdiagram
* `barplot`: type grafiek;
* `percentage`: de variabele met data die we wensen te gebruiken;
* `names.arg`: de labels die bij de grafiek zullen afgedrukt worden; 
* `main`: de titel die bovenaan de grafiek komt te staan;
* `col`: kleur van de grafiek
```
barplot(percentage, names.arg = materialen, main = "Staafdiagram van de percentages", col = "#3dffd0", las = 2, cex.names = 0.7)

```

#### Taartdiagram
* `pie`: type grafiek;
* `percentage`: de variabele met data die we wensen te gebruiken;
* `names.arg`: de labels die bij de grafiek zullen afgedrukt worden; 
* `main`: de titel die bovenaan de grafiek komt te staan;
* `col`: kleur van de grafiek. Hier dus een regenboog aan verschillende kleuren. 
```
pie(percentage, labels = materialen, main = "Taartdiagram van de percentages", col = rainbow(length(materialen)))
```

