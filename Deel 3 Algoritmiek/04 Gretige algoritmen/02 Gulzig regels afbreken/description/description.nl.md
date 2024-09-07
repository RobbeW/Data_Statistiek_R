Tekstverwerkers hebben een algoritme nodig om een alinea's tekst op te splitsen in regels die een vooraf ingestelde maximale lengte niet overschrijden.

Er bestaan verschillende algoritmen om dit te realiseren en in het algemeen geven die aanleiding tot alinea's die er verschillend uitzien. Meestal wenst men een opsplitsing die niet al te "rafelig" is, d.w.z. dat alle regels zo goed als mogelijk de maximale lengte benutten. Een manier om de "rafeligheid" te kwantificeren is d.m.v. de som van de kwadraten van de verschillen tussen de maximaal toegelaten lengte en de effectieve lengte van de verschillende regels. In formulevorm wordt dit:

$$
    \mathsf{ \sum_{i=1}^{\text{aantal regels}}( \text{maximale lengte} - \text{lengte regel }i)^2 }
$$

Een eenvoudig algoritme om een opsplitsing van een alinea te maken is het volgende: maak telkens regels die **zo lang mogelijk zijn**, d.w.z. dat wanneer een woord nog volledig op een regel past, dit woord dan op die regel geplaatst wordt. Het is pas wanneer een woord niet meer op de huidige regel past dat een nieuwe regel wordt begonnen. Omdat dit algoritme geen rekening houdt met de woorden die nog komen noemen we dit een **gulzig of gretig** algoritme.

Stel dat de tekst `"Dit is een makkie"` moet worden opgesplitst in regels waarvoor de maximale lengte gelijk is aan 7, dan levert het beschreven algoritme de volgende alinea:

```
xxxxxxx
Dit is
een
makkie
xxxxxxx
```

De **rafeligheid** van deze alinea is:

$$
    \mathsf{(7 − 6)^2 + (7 − 3)^2 + (7 − 6)^2 = 1 + 16 + 1 = 18}
$$

## Gevraagd

Schrijf een functie `rafeligheid(regellengte, woorden)` die gegeven een maximale regellengte en een **lijst** met woorden de rafeligheidscore bepaalt. Je mag ervan uitgaan dat het langste woord steeds kleiner is dan de maximale regellengte **en** dat er minstens één woord is.

#### Voorbeelden

```python
>>> rafeligheid(7, ["Dit", "is", "een", "makkie"])
18
```

```python
>>> rafeligheid(7, ["Perfect"])
0
```

```python
>>> rafeligheid(10, ["Deze", "editie", "is", "de", "beste", "ooit"])
77
```

{: .callout.callout-secondary}
>#### Bron
> Dit is een oefening uit de Vlaamse programmeerwedstrijd 2021 - categorie 1.