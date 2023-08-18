## Gegeven

In medisch onderzoek is het vaak essentieel om verschillende patiëntgegevens bij te houden, zoals hun namen en specifieke gezondheidsgegevens. In deze oefening zullen we R gebruiken om twee variabelen te maken: een om de namen van patiënten op te slaan en een andere om het aantal antilichamen op te slaan dat elke patiënt heeft om COVID-19 te bestrijden.


Stel je voor dat je een onderzoeker bent die werkt aan een studie waarbij vijf patiënten betrokken zijn. Hieronder staan hun namen en het aantal antilichamen:

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
            <th>Namen Patiënten</th>
            <th>Aantal Antilichamen</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Alice</td>
            <td>120</td>
        </tr>
        <tr>
            <td>Bob</td>
            <td>150</td>
        </tr>
        <tr>
            <td>Karen</td>
            <td>135</td>
        </tr>
        <tr>
            <td>David</td>
            <td>110</td>
        </tr>
        <tr>
            <td>Eva</td>
            <td>145</td>
        </tr>
    </tbody>
</table>

{: .callout.callout-info}
>## Gevraagd
>
>* **De variabele maken:**  
> Begin met het aanmaken van een variabele genaamd `patient_names` om de namen van de patiënten op te slaan. Deze variabele moet een vector zijn.
>
>* **De antilichaamvariabele maken:**  
> Maak vervolgens een andere variabele genaamd `antilichamen` om het aantal antilichamen voor elke patiënt op te slaan. Deze variabele moet ook een vector zijn.
>
>* **De variabelen weergeven:**  
> Print tenslotte beide variabelen naar het scherm met de `print` functie om te controleren of ze correct zijn geïnitialiseerd.
>


## Uitvoer: 

Na afloop van deze oefening zou je twee R-variabelen (`patient_names` en `antibody_counts`) moeten hebben met de verstrekte gegevens. Je moet ook de inhoud van deze variabelen op het scherm kunnen weergeven.


