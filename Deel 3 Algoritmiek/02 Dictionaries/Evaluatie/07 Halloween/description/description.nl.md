Tijdens Halloween worden vaak verkleedwedstrijden gehouden. Een lokale organisatie bekroont outfits van elk type met prijzen, een prijs voor de *Helse heks*, het *Schrikwekkende Spook*, de *Mystieke Magiër*, de *Macabere Mummie*, enz...

![Foto door Paige Cody op Unsplash.](media/paige-cody.jpg "Foto door Paige Cody op Unsplash."){:data-caption="Foto door Paige Cody op Unsplash." width="40%"}

De jury is echter lui en kiest in elke categorie **willekeurig een winnaar**.

Dit jaar wil je je winstkansen optimaliseren. Je hebt op voorhand aan al je vrienden gevraagd hoe ze zich gaan verkleden, kan je op basis van die info bepalen welk(e) kostuumtype(s) je kansen maximaliseren?

## Gevraagd
Schrijf een functie `halloween(bevraging)` dat gegeven een lijst met kostuums de kostuumtypes retourneert die je kansen maximaliseert. Je weet dat voor elke categorie die beoordeeld zal worden, er minstens één vriend zich zo zal verkleden. De kostuumcategorieën worden in een lijst geretourneerd.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> halloween(["spook", "mummie", "heks", "zombie", "zombie", "zombie", "zombie", "zombie"])
["spook", "mummie", "heks"]
```
Er zijn maar liefst vijf vrienden die zich als *zombie* gaan verkleden, vandaar het weinig zin heeft om je ook als *zombie* te verkleden. Je verkleden als *spook*, *mummie* of *heks* zal je kansen vergroten.


```python
>>> halloween(["spook", "zombie", "spook"])
["zombie"]
```
Het is logisch dat je je als *zombie* gaat verkleden, twee vrienden verkleden zich immers al als *spook*.


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op het probleem *Costume Contest*, HiQ Challenge (2018). 
