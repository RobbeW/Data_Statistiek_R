Op een limonade standje wordt voor een glaasje vers geperst limonadesap €5 gevraagd. Klanten schuiven aan en kopen één per één telkens een glaasje limonadesap. Ze betalen telkens met €5, €10 of een briefje van €20. 

!["Foto door RDNE Stock project."](media/rdne.jpg "Foto door RDNE Stock project."){:data-caption="Foto door RDNE Stock project." width="35%"}

Je start met een **kassa van €0** en kan maar teruggeven indien je reeds genoeg wisseldgeld hebt verzameld van voorbije klanten.

## Gevraagd
Schrijf een functie `wisselgeld_mogelijk(biljetten)` dat gegeven een lijst met de biljetten van de klanten bepaalt of het mogelijk is dat elke klant het correcte wisseldgeld kreeg. Je retourneert `True` indien dit kan en `False` indien het niet lukt.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> wisselgeld_mogelijk([5, 5, 5, 10, 20])
True
```
De eerste drie klanten zorgen ervoor dat er 3 biljetten van €5 in de kassa liggen. Voor de vierde klant kan je dus €5 teruggeven **en** ontvang je een biljet van €10. De laatste klant kan een biljet van €10 en van €5 terugkrijgen. Alle klanten krijgen dus het correcte wisselgeld.


```python
>>> wisselgeld_mogelijk([5, 5, 10, 10, 20])
False
```
De klanten die met €10 betaalden kregen telkens €5 wisselgeld. De kassa bevat dan twee biljetten van €10, hiermee kan je de laatste klant **niet** van het correcte wisselgeld voorzien.
