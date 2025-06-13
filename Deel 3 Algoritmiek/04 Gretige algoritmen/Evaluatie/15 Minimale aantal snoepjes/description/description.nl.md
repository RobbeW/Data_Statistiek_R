De kinderen uit een klas kregen elk een toets terug, met hierop een cijfer. Zoals beloofd beloon je ze met snoep en ze schuiven aan in een rij.

![Foto door Patrick Fore op Unsplash.](media/patrick-fore.jpg "Foto door Patrick Fore op Unsplash."){:data-caption="Foto door Patrick Fore op Unsplash." width="40%"}

Ze krijgen een beloning die aan deze regels moet voldoen:

- elk kind moet minstens één snoepje krijgen;
- kinderen met een **beter resultaat** krijgen meer snoep dan hun buren.

Zoek nu het minimale aantal snoepjes dat je moet verdelen.

## Gevraagd

Programmeer een functie `minimale_snoep(scores)` dat gegeven een lijst met scores van leerlingen op zoek gaat naar dit minimale aantal.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> minimale_snoep([1, 0, 2])
5
```

Je geeft het eerste kind immers 2 snoepjes, het tweede kind 1 snoepje en het laatste kind opnieuw 2 snoepjes. Dan werd aan alle regels voldaan.


```python
>>> minimale_snoep([1, 2, 2])
4
```

Je geeft het eerste kind 1 snoepje, het tweede kind 2 snoepjes en het laatste kind opnieuw 1 snoepje. Dat laatste klinkt bizar, maar enkel een **beter resultaat** verdient **meer** snoep dan de buren.


```python
>>> minimale_snoep([1, 2, 2, 2, 0])
7
```

Denk zelf na hoe je aan 7 snoepjes komt...