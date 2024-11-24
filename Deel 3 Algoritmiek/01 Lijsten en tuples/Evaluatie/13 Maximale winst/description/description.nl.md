Niemand kan de beurs echt voorspellen, maar gegeven een beurskoers, kan je dan de winst maximaliseren?

Indien de koers van een aandeel bijvoorbeeld `[7, 1, 5, 3, 6, 4]` was en je hebt €20 euro. Dan kan je 20 aandelen kopen op dag twee. Je kan deze de volgende dag verkopen aan €5 per aandeel (winst = €80). Met het nieuwe bedrag kan je op dag vier 33 aandelen van €3 kopen, die je dag erop opnieuw verkoopt aan €6 per aandeel (winst = €99). In het totaal heb je dan €179 euro winst. 

!["The wolf of Wallstreet waardeert je werk."](media/wolf.gif "The wolf of Wallstreet waardeert je werk."){:data-caption="The wolf of Wallstreet waardeert je werk." width="200px"}

Je investeert altijd zoveel mogelijk van je kapitaal in aandelen en wanneer je verkoopt, dan verkoop je alles. Je koopt nooit delen van aandelen. Heb je bijvoorbeeld €100 en kosten de aandelen €14 per stuk, dan kan je er 7 kopen en hou je €2 over voor later. Tot je de aandelen verkocht hebt.

## Gevraagd
Schrijf een functie `maximale_winst(bedrag, dagkoers)` die gegeven een startbedrag en een lijst met de beurskoers de maximale winst bepaalt. Indien er geen winst te maken valt, dan geef je `0` terug.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> maximale_winst(20, [7, 1, 5, 3, 6, 4])
179
```

```python
>>> maximale_winst(100, [7, 6, 5, 4, 3, 1])
0
```

```python
>>> maximale_winst(100, [1, 10, 1, 10])
9900
```

```python
>>> maximale_winst(100, [1, 10, 10, 1])
900
```


{: .callout.callout-secondary}
>#### Bron
> Dit gebaseerd op een oefening uit de Vlaamse programmeerwedstrijd 2023 - categorie 2.