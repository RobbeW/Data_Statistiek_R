De Lijn heeft een fijnmazig netwerk in Gent. Maar liefst 28 buslijnen verbinden elk deel van de stad met elkaar. Je kan dit busnetwerk voorstellen in een dictionary van de vorm `<buslijn>:<haltes>`.

Hieronder vind je een voorbeeld van deze dataset:

```python
de_lijn = {"40": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           "79": ["Spanjeveerbrug", "Herpelinckstraat", "Kapelledreef", "Arcelor Mittal"], 
           "41": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           "16": ["Zuid", "Kapucijnenham", "Reep", "Van Eyckstraat", "Puinstraat", "Lousbergsbrug", "Lousbergskaai", "Zalmstraat", "Minneplein"], 
           "42": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           ...}
```

Welke haltes zijn de **drukste haltes**? In het bovenstaande voorbeeld zie je al dat er minstens 4 buslijnen (40, 41, 16 en 42) stoppen aan de Dampoort. 

![Foto door Geike Verniers op Unsplash.](media/geike-verniers.jpg "Foto door Geike Verniers op Unsplash."){:data-caption="Foto door Geike Verniers op Unsplash." width="35%"}

## Gevraagd
Schrijf een functie `drukte_haltes(busnetwerk)` dat gegeven een busnetwerk van bovenstaande vorm per halte het aantal lijnen dat er stopt bepaalt. Dit wordt weergeven als dictionary van de vorm `<halte>:<aantal>`.

Bestudeer grondig onderstaand voorbeeld:

#### Voorbeeld

```python
>>> drukte_haltes({"40": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           "79": ["Spanjeveerbrug", "Herpelinckstraat", "Kapelledreef", "Arcelor Mittal"], 
           "41": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           "16": ["Zuid", "Kapucijnenham", "Reep", "Van Eyckstraat", "Puinstraat", "Lousbergsbrug", "Lousbergskaai", "Zalmstraat", "Minneplein"], 
           "42": ["Zuid", "Vijfwindgatenstraat", "Sint-Lievenspoort"], 
           ...})
{"Zuid": 15,
 "Vijfwindgatenstraat": 10,
 "Sint-Lievenspoort": 4,
 ...}
```
