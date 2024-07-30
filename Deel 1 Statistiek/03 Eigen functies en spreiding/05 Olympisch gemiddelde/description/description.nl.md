Bij heel wat sporten waar een jury punten toekent maakt men gebruik van het zogenaamd **Olympisch gemiddelde**. Dit een gemiddelde waarbij de grootste en kleinste waarden weggelaten worden.

Een **voorbeeld** als illustratie. Op het onderdeel *halfpipe* bij het <a href="https://nl.wikipedia.org/wiki/Snowboarden" target="_blank">snowboarden</a> op de Olympische winterspelen kennen zes juryleden de volgende scores toe: 98, 97, 98, 99, 100 en 98. De *laagste score* is 97 en de *hoogste score* is 100, deze waarden worden weggelaten. Van de resterende vier scores is het gemiddelde 98.25, dit is dan ook de score die de snowboarder krijgt.

![Een snowboarder.](media/patrick-t-kindt.jpg "Foto door Patrick T'Kindt op Unsplash."){:data-caption="Een snowboarder." width="45%"}

## Gegeven

In deze oefening programmeer je een eigen **functie** `olympic_mean()` die gegeven een dataset de vorige definitie implementeert.

## Gevraagd

Programmeer nu een functie `olympic_mean()`. Er zijn verschillende mogelijke manieren om dit aan te pakken, *een mogelijke aanpak* vind je hieronder.

- Sorteer eerst de data met behulp van `sort()`.
- Je kan het minimum en maximum nu *verwijderen* door een goede selectie te maken. Indien de data bijvoorbeeld 6 lang is, gebruik dan `data[2:5]`, indien data 10 lang is, dan moet het gemiddelde berekend worden van `data[2:9]`, enz...
- **Opgelet** met de volgorde van de bewerkingen bij de selectie. `data[2:10-1]` is niet hetzelfde als `data[2:(10-1)]`.
- Bereken dat gemiddelde, sla dat op in een variabele en plaats die variabele binnen de `return()` expressie.

#### Voorbeelden

Indien `data` gelijk is aan `c(98, 97, 98, 99, 100, 98)`, dan verschijnt er:
```R 
> olympic_mean(data)
[1] 98.25
```

Indien `data` gelijk is aan `c(14, 25, 14, 18, 16, 16, 20)`, dan verschijnt er:
```R
> olympic_mean(data)
[1] 16.8
```