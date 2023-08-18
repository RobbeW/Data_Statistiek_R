## Gegeven

Hieronder vind je een tabel met de verdeling van verkochte auto's in 2022 op basis van kleur. 


<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kleuren van auto's</title>
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
            background-color:;
        }
    </style>
</head>
<body>

<table>
    <thead>
        <tr>
            <th>Kleur</th>
            <th>Percentage auto's</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Zilver</td>
            <td>7.5</td>
        </tr>
        <tr>
            <td>Wit</td>
            <td>20.4</td>
        </tr>
        <tr>
            <td>Zwart</td>
            <td>10.53</td>
        </tr>
        <tr>
            <td>Donkergrijs</td>
            <td>24.22</td>
        </tr>
        <tr>
            <td>Donkerblauw</td>
            <td>22.74</td>
        </tr>
        <tr>
            <td>Lichtbruin</td>
            <td>1.27</td>
        </tr>
        <tr>
            <td>Rood</td>
            <td>13.7</td>
        </tr>
    </tbody>
</table>

</body>
</html>

{: .callout.callout-info}
>## Gevraagd
>* Maak een variabele met alle kleuren; 
>* Maak een variabele met alle percentages; 
>* Maak de som van alle percentages; 
>* Maak een staafdiagram van deze gegevens. 

## Invoer
De volgende elementen helpen je op weg: 

```
# Data
kleuren <- c("Zilver", "Wit", "Zwart", ...) 
percentages <- c(7.4, 20.3, 10.53, ...) 
```

**Opgelet:** In de code hieronder ontbreken nog enkele `labels`! 
```
# Staafdiagram van de gegevens
barplot(percentages, names.arg = kleuren, main = "Verdeling van verkochte auto's in 2022 op basis van kleur", xlab = "...", ylab = "...", col = rainbow(length(kleuren)), las = 2, cex.names = 0.7)
```

## Uitvoer
* Je bepaalt de som van alle percentages, 
* Je verkrijgt een grafiek met de kleuren en percentages van de auto's. 

