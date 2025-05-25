Rajshahi (রাজশাহী) is één van de oudste steden in Bangladesh. Het land is gekend voor de mango export. De mango's uit Rajshahi zijn wereldberoemd omwille van hun unieke en lekkere smaak. Er groeit ook een veelheid aan verschillende soorten mango's en de lokale inwoners eten wel drie maal daags deze fruitsoort.

![Foto door Desirae Hayes-Vitor op Unsplash.](media/desirae-hayes-vitor.jpg "Foto door Desirae Hayes-Vitor op Unsplash."){:data-caption="Foto door Desirae Hayes-Vitor op Unsplash." width="40%"}

Je wordt uitgedaagd door een lokale inwoner voor een wedstrijd mango eten. Je weet hoeveel mango's je van elke soort en hoeveel je er in het totaal kan eten. Ga met behulp van deze informatie na of je de uitdaging aan kan.


## Gevraagd
Schrijf een functie `mango(maximum, maximum_soort, aantal_soort)` dat gegeven drie parameters bepaalt of je de uitdaging aankan. De parameter `maximum` stelt het maximum aantal mango's voor dat je in een dag kan opeten. `maximum_soort` is een **lijst** met het maximum aantal mango's dat je van elke soort kan verorberen en `aantal_soort` stelt een lijst voor met het aantal mango's van **elke soort** die je zal krijgen.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> mango(5, [1, 3, 3], [1, 2, 3])
"lukt niet"
```
In dit geval kan je maximaal `5` mango's eten. Maar je krijgt `[1, 2, 3]` mango's voorgeschoteld wat samen meer is dan het maximum.


```python
>>> mango(6, [1, 2, 3], [1, 3, 2])
"lukt niet"
```
Dit lukt niet, want je kan slechts 2 mango's van de tweede soort eten, terwijl je er 3 voorgeschoteld krijgt.


```python
>>> mango(6, [3, 3, 3], [2, 2, 2])
"lukt"
```
Je krijgt immers 6 mango's voorgeschoteld. En het aantal van elke soort is steeds minder dan het maximale aantal per soort.


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Ultimate Mango Challenge*, Universiteit van Valladolid (UVa). 
