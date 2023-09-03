Bij heel wat sporten waar een jury punten toekent maakt men gebruik van het zogenaamd **Olympisch gemiddelde**. Dit een gemiddelde waarbij de grootste en kleinste waarden weggelaten worden.

Een **voorbeeld** als illustratie. Op het onderdeel *halfpipe* bij het snowboarden op de olympische winterspelen kennen zes juryleden de volgende scores toe: 98, 97, 98, 99, 100 en 98. De *laagste score* is 97 en de *hoogste score* is 100, deze waarden worden weggelaten. Van de resterende vier scores is het gemiddelde 98.25, dit is dan ook de score die de snowboarder krijgt.

![Een snowboarder.](media/patrick-t-kindt.jpg "Foto door Patrick T'Kindt op Unsplash."){:data-caption="Een snowboarder." width="35%"}

## Gegeven

In deze oefening programmeer je een eigen **functie** `olympic_mean()`. De syntax van een functie is als volgt:

```R
functienaam <- function(parameters) {
    # Allerhande berekeningen
    return( resultaat )
}
```

Het BMI van een persoon hangt bijvoorbeeld af van de massa en lengte en die berekening kan je in een functie gieten:

```R
bepaal_bmi <- function(massa, lengte) {
    resultaat <- massa / lengte^2
    return(round(resultaat, 2))
}
```

Deze functie kan dan uitgevoerd worden als volgt `bepaal_bmi(70, 1.80)` resulteert in `21.6`.

## Gevraagd

- Programmeer nu een functie `olympic_mean()`, de basisstructuur staat al klaar, in onderstaande stappen word je door de aanpak geleid.
- Sorteer eerst de data met behulp van `sort()`.
- Je kan het minimum en maximum nu *verwijderen* door een goede selectie te maken. Indien de data bijvoorbeeld 6 lang is, gebruik dan `data[2:5]`, indien data 10 lang is, dan moet het gemiddelde berekend worden van `data[2:9]`, enz...
- Bereken dat gemiddelde, sla dat op in een variabele en plaats die variabele binnen de `return()` expressie.
- Test je functie uit via voorbeeld.