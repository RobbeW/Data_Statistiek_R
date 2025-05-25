Stel dat je een geweldige ouder bent en je je kinderen enkele koekjes wil geven. Maar je bewaakt de gezondheid van je kinderen en zal elk kind maximaal één koekje geven.

![Het cookiemonster.](media/cookiemonster.gif "Het cookiemonster."){:data-caption="Het cookiemonster." width="200px"}

Maar elk kind is wat kieskeurig, sommige zijn al tevreden met een klein koekje terwijl andere een grote koek eisen. Stel dat je weet hoe groot de voorkeur van elk kind is en je een verzameling koeken hebt, hoeveel kinderen kan je dan maximaal tevreden stellen?

## Gevraagd

Programmeer een functie `maximale_koeken(gulzigheid, koeken)` die gegeven een lijst `gulzigheid` met de eisen qua koekjesgrootte van elk kind en een lijst `koeken` met de koeken die je hebt, zoek dan het maximale aantal kinderen dat je gelukkig kan maken.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> maximale_koeken([1, 2, 3], [1, 1])
1
```
Je hebt twee koeken van eenzelfde grootte (namelijk `1`) en drie kinderen die koeken van groottes `1`, `2` en `3` willen. Je kan dan enkel het kind dat een koek van grootte `1` wilt gelukkig maken.


```python
>>> maximale_koeken([1, 2], [1, 2, 3])
2
```
In dit geval kan je je twee kinderen gelukkig maken, want de koekjes die hebt zijn groot genoeg om beide gelukkig te stemmen.