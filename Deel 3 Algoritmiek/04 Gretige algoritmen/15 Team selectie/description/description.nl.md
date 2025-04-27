Elk jaar selecteer een coach leerlingen om deel te nemen aan een programmeerwedstrijd. Hij maakt hiervoor teams van 3 leerlingen en baseert zich op de individuele scores van de leerlingen.

Uit ervaring weet de coach dat de elk team even goed presteert als de mediane leerling uit elk team. Indien de scores van de leerlingen uit één team `4`, `7` en `6` zijn, verwacht de coach een `6` als eindresultaat.

Stel nu dat je de resultaten van een aantal leerlingen krijgt, zoek dan een verdeling zodat de verwachte score op de wedstrijd gemaximaliseerd wordt.

## Gevraagd
Programmeer een functie `samenstelling_team(scores)` die gegeven een lijst met de individuele scores van een groep leerlingen de maximale verwachte score op de wedstrijd retourneert. Je mag ervan uit gaan dat het aantal leerlingen in de lijst steeds deelbaar is door 3.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> samenstelling_team([8, 8, 6, 9, 10, 9])
17
```

Je kan immers als eerste team de leerlingen met de scores `8`, `8` en `6` nemen, met als mediaan `8`. En als tweede team de resterende leerlingen met scores `9`, `10` en `9` met als mediaan `9`. Deze medianen samen resulteren in `17`.

Een alternatieve samenstelling van het eerste team `9`, `8` en `6` en als tweede team `8`, `10` en `9` levert net dezelfde maximale mediaan.

```python
>>> samenstelling_team([1, 2, 3, 4, 5, 6, 7, 8, 9])
18
```

Zoek zelf naar de optimale groepsverdeling...

{: .callout.callout-secondary}
>#### Bron
> ACM - ICPC Asia Nha Trang Regional Contest (2016)
