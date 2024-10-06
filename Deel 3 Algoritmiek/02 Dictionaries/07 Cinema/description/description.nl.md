
![Foto door Krists Luhaers op Unsplash.](media/krists-luhaers.jpg "Foto door Krists Luhaers op Unsplash."){:data-caption="Foto door Krists Luhaers op Unsplash." width="40%"}

Op het einde van een cinemabezoek wordt aan de bezoekers gevraagd welke beoordeling ze de film gaven. De antwoorden worden bewaard in een dictionary van de volgende vorm:

```python
filmscores = {"Inside Out 2": [9, 10, 9.5, 8.5, 3, 7.5, 8],
              "Bad Boys: Ride or Die": [7, 6, 5],
              ...}
```

## Gevraagd
Schrijf een functie `cinema(filmscores)` die gegeven een dictionary van bovenstaande vorm de gemiddelde scores uitrekent. Schrijf deze opnieuw weg in een dictionary. Rond af op één decimaal.

Bestudeer grondig onderstaand voorbeeld.

#### Voorbeelden

```python
>>> cinema({"Inside Out 2": [9, 10, 9.5, 8.5, 3, 7.5, 8],
            "Bad Boys: Ride or Die": [7, 6, 5]})
{'Inside Out 2': 7.9, 'Bad Boys: Ride or Die': 6.0}
```

{: .callout.callout-info}
> #### Tip
> Een elegante oplossing zou eerst een functie `gemiddelde()` maken, die je nadien gebruikt in de functie `cinema()`.

