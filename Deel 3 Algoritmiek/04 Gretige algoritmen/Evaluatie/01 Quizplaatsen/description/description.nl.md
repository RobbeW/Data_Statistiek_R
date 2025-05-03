Normaal wordt bij een quiz de rangschikking van de ploegen gebaseerd op het puntentotaal. Dit wil je echter wat aanpassen en je vraagt elk team om bij inschrijving hun plaats, die ze denken te behalen, in te vullen.

![Een caféquiz.](media/pubquiz.jpg "Een caféquiz."){:data-caption="Een caféquiz." width="35%"}

Het idee is nu om al die verwachtingen in te willigen, maar hoe ga je om met ploegen die eenzelfde plaats denken te behalen? 

Een mogelijke manier is om een rangschikking te zoeken die zo weinig mogelijk afwijkt ten opzichte van de verwachtingen van elke quizploeg. 

## Gevraagd
Programmeer een functie `beste_rangschikking(quizploegen)` die gegeven een lijst van `quizploegen`, telkens een tupel van de vorm `(ploegnaam, rangschikking)` op zoek gaat naar de minimale totale afwijking die men kan bekomen door de ploegen een zo goed mogelijke plaats te geven ten opzichte van hun verwachtingen.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> beste_rangschikking([("Team Twijfel", 1), ("De Kwissers", 1), ("Team Goed Gegokt", 1)])
3
```

```python
>>> beste_rangschikking([("Slimme Koppen", 1), ("W1nn3rs", 2), ("Puntje van m'n Tong", 2), ("Weetnix", 1), ("Breinstorm", 5), ("Vragenvuur", 7), ("Wie Weet", 7)])
5
```

{: .callout.callout-secondary}
>#### Bron
> IPSC 2006
