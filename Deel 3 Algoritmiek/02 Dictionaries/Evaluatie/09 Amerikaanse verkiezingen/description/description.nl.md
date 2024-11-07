De Amerikaanse president wordt verkozen via kiesmannen. Afhankelijk van de grootte van een Amerikaanse staat worden er meer of minder kiesmannen gekozen. In de volgende dictionary vind je een overzicht van deze aantallen:

```python
staten = {
    "Alabama": 9, "Alaska": 3, "Arizona": 11, "Arkansas": 6, "California": 55, "Colorado": 9, "Connecticut": 7, "Delaware": 3, "District of Columbia": 3,
    "Florida": 29, "Georgia": 16, "Hawaii": 4, "Idaho": 4, "Illinois": 20, "Indiana": 11, "Iowa": 6, "Kansas": 6, "Kentucky": 8, "Louisiana": 8, 
    "Maine": 4, "Maryland": 10, "Massachusetts": 11, "Michigan": 16, "Minnesota": 10, "Mississippi": 6, "Missouri": 10, "Montana": 3, "Nebraska": 5, 
    "Nevada": 6, "New Hampshire": 4, "New Jersey": 14, "New Mexico": 5, "New York": 29, "North Carolina": 15, "North Dakota": 3, "Ohio": 18, 
    "Oklahoma": 7, "Oregon": 7, "Pennsylvania": 20, "Rhode Island": 4, "South Carolina": 9, "South Dakota": 3, "Tennessee": 11, "Texas": 38, 
    "Utah": 6, "Vermont": 3, "Virginia": 13,"Washington": 12, "West Virginia": 5, "Wisconsin": 10, "Wyoming": 3
}
```

!["'The Donald'"](media/trump-dance.gif "'The Donald'"){:data-caption="'The Donald'" width="350px"}

Indien in een staat een bepaalde kandidaat wint, dan worden alle kiesmannen van die staat aan die kandidaat toegewezen. Indien Donald Trump in de staat Texas wint, dan krijgt hij alle 38 kiesmannen toegewezen.

Stel dat je van alle staten telkens de resultaten voor de verschillende kandidaten krijgt, bepaal dan het aantal kiesmannen dat elke kandidaat krijgt. Je krijgt de uitslag van de verkiezingen in een dictionary van de vorm `<staat>:<resultaten>` waarbij `resultaten` een lijst voorstelt met telkens de kandidaat en of deze `"wint"` of `"verliest"`.

Hoewel de focus in Amerika steeds op twee kandidaten ligt, komen er soms nog andere kandidaten op. Meestal is het percentage dat deze kandidaten bemachten wel vrij klein.

## Gevraagd
Schrijf een functie `president(uitslagen)` die gegeven dergelijke dictionary een nieuwe dictionary met het aantal kiesmannen per kandidaat bepaalt.

Bestudeer grondig onderstaand voorbeeld.

#### Voorbeelden

```python
>>> president({"Texas": ["Donald Trump", "wint" "Kamela Harris", "veriest", "Jill Stein", "verliest", "Chase Oliver", "verliest"],
               "New Mexico": ["Donald Trump", "verliest",  "Kamela Harris", "wint", "Jill Stein", "verliest", "Robbert Kennedy", "verliest"],
               ...})
{"Donald Trump": 295, 
 "Kamela Harris": 243}
```

{: .callout.callout-info}
>#### Tip
> Gebruik de bovenstaande dictionary `staten`.
