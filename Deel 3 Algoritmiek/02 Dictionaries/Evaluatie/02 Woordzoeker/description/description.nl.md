Een populaire puzzel, die men vaak in kranten terug kan vinden, is de **woordzoeker**. Een aantal letters wordt gegeven en de vraag is vervolgens hoeveel (van de gegeven) woorden gevormd kunnen worden met deze letters.

![Foto door Alexandra Lowenthal op Unsplash.](media/alexandra-lowenthal.jpg "Foto door Alexandra Lowenthal op Unsplash."){:data-caption="Foto door Alexandra Lowenthal op Unsplash." width="50%"}

## Gevraagd
Schrijf een functie `aantal_woorden(letters, woorden)` dat gegeven een **lijst** van letters en een **lijst** met woorden nagaat hoeveel van deze woorden gevormd kunnen worden met behulp van de letters.

Bestudeer grondig onderstaande voorbeelden:

#### Voorbeelden

```python
>>> aantal_woorden(["B", "B", "E", "E", "U", "W"], ["EEUW", "WEB", "ROOS", "MAAN"])
2
```

Met de gegeven letters kan je namelijk de woorden `"EEUW"` en `"WEB"` vormen.


```python
>>> aantal_woorden(["B", "E", "W", "G"], ["BEWEEG", "BOOG", "HOND", "DAK"])
0
```
Want met de gegeven letters kan je geen enkel opgegeven woorden maken.


{: .callout.callout-info}
>#### Tip
> Itereren over een woord werkt op dezelfde manier als bij een lijst:
> ```python
woord = "EEUW"
for letter in woord:
   print(letter)
```
> zou achtereenvolgens `"E"`, `"E"`, `"U"` en `"W"` afdrukken.


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Word Problem*, Universiteit van Valladolid (UVa). 
