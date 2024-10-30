Er waren 2 857 geboortes in Gent in 2023. StatBel houdt hierbij de frequenties van de voornamen bij, deze worden voorgesteld in een dictionary van de vorm `<voornaam>:<aantal>`.

```python
voornamen = {"Olivia": 154,
             "Emma": 132,
             "Noah": 132,
             "Arthur": 130,
             "Louise": 130,
             "Liam": 130}
```

Je kan deze dictionary ook omvormen zodat je per frequentie de voornamen krijgt. Deze dictionary heeft dus de gedaante `<aantal>:<voornamen>` waarbij voornamen een lijst is. Bovenstaande dictionary zou er dus als volgt gaan uitzien:

```python
omgevormd = {154: ["Olivia"],
             132: ["Emma", "Noah"],
             130: ["Arthur", "Louise", "Liam"]}
```

Op deze manier kan je eenvoudig opvragen welke voornamen een bepaald aantal keer voorkomen.

![Foto door Heiner op Pexels.](media/heiner.jpg "Foto door Heiner op Pexels."){:data-caption="Foto door Heiner op Pexels." width="50%"}

## Gevraagd
Schrijf een functie `omvormen(voornamen)` dat gegeven een dictionary van de vorm `<voornaam>:<aantal>` deze omdraait naar de vorm `<aantal>:<voornamen>`. De waarde een lijst die de verschillende voornamen bevat. De volgorde van deze voornamen maakt niet uit.

#### Voorbeeld

```python
>>> omvormen({"Olivia": 154, "Emma": 132, "Noah": 132, "Arthur": 130, "Louise": 130, "Liam": 130})
{154: ["Olivia"],
 132: ["Emma", "Noah"],
 130: ["Arthur", "Louise", "Liam"]}
```
