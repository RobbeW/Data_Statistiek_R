## De Mediaan in Statistiek 

De mediaan is een centrale waarde die een dataset in twee helften verdeelt wanneer deze in oplopende volgorde is gesorteerd. Bijvoorbeeld, in de verzameling getallen 2, 5, 6, 7 en 9 is de mediaan 6. Als er een even aantal getallen is, is de mediaan het gemiddelde van de twee middelste waarden.

### Voordelen van de mediaan
1. **Robuustheid**: De mediaan is bestand tegen afwijkingen. Als een enkele uitschieter, zoals 99 in plaats van 9, per ongeluk wordt ingevoerd in een dataset, kan het gemiddelde sterk scheefgetrokken zijn, maar de mediaan blijft grotendeels onaangetast.

2. **Reflecteert de centrale tendens**: De mediaan zorgt ervoor dat **50% van de waarnemingen erboven ligt en 50% eronder**. Deze eigenschap is gunstig bij het vergelijken van bijvoorbeeld salarissen. In een groep met salarissen van 2100, 1850, 2307, 1789, 6199 ... euro kan 90% onder het gemiddelde verdienen, maar nooit onder de mediaan.

3. **Voorspellend voor echte scenario's**: Als bij examens de slagingsscore 5 is en de **gemiddelde score** van de studenten is ook 5, dan betekent dat **niet noodzakelijk** dat de helft van de studenten geslaagd is. Maar als de **mediaan van de score 5 is**, is het **zeker dat 50% is geslaagd.**

### Mediaan in R

Om bijvoorbeeld de mediaan van de genoemde salarissen te berekenen:
```
salarissen <- c(2100, 1850, 2307, 1789, 6199)
print(median(salarissen)) # Geeft 2100 terug
```

{: .callout.callout-info}
>## Samengevat
>De **mediaan** biedt een centrale waarde die de verdeling van een dataset weerspiegelt en biedt inzichten die vaak **representatiever zijn dan het gemiddelde**, vooral in de aanwezigheid van **uitschieters**. Wanneer de functie `median()` in R wordt gebruikt, wordt het een krachtig hulpmiddel voor het begrijpen en interpreteren van gegevensverdelingen.
