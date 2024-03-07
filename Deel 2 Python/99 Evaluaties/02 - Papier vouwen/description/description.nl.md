## Gegeven

Gegeven een vierkant vel papier, **hoeveel keer** kan je dit dubbel vouwen?

![Papier vouwen.](media/folding.gif "Papier vouwen."){:data-caption="Papier vouwen." width="35%"}

Vaak zegt men dat, ongeacht de grootte van het vel papier, dit maar een zevental keer lukt.

In januari 2002 bedacht Britney Gallivan op 17-jarige leeftijd echter enkele formules waarmee je de afmetingen van een vel papier kan bepalen zodat je dit **meer** dan zeven keer kan dubbelvouwen. Bij een vierkant vel papier ziet de formule er als volgt uit:

$$
 \mathsf{W = \pi \cdot t \cdot 2^{3\cdot (n-1) : 2}  }
$$

Hierbij staat $$\mathsf{W}$$ voor de zijde van het vel papier (in mm), $$\mathsf{t}$$ voor de dikte ervan (in mm) en $$\mathsf{n}$$ voor het aantal keer dat je het vel dubbel wil vouwen.

## Gevraagd
Schrijf een programma dat de **dikte** van het vel papier vraagt en **vervolgens** het **aantal keer** dat je het blad wil gaan dubbelvouwen. Je programma berekent vervolgens welke zijde dit blad *minstens* moet hebben. Druk dit uit in **volledige meters**.

#### Voorbeelden
Voor een blad van `0.05` mm dik dat men `7` wil dubbel vouwen, verschijnt er:
```
De zijde van het blad papier moet minstens 1 m meten
```

Voor een blad van `0.05` mm dik dat men `12` wil dubbel vouwen, verschijnt er:
```
De zijde van het blad papier moet minstens 146 m meten
```
