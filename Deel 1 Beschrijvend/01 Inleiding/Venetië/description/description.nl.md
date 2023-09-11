De waterstanden worden in Venetië nauwgezet bijgehouden. Op <a href="https://www.comune.venezia.it/node/6214" target="_blank">deze website</a> kan je zelfs per dag en uur de waterstand opzoeken. Overstromingen zijn er niet abnormaal (dit komt ondere andere door de specifieke vorm van de Adriatische zee), maar misschien zorgt de stijgende zeespiegel ook voor meer overstromingen?

![Een overstroming in Venetië.](media/egor-gordeev.jpg "Foto door Egor Gordeev op Unsplash."){:data-caption="Een overstroming in Venetië." width="45%"}

In onderstaande voorbeeld vind je van de laatste jaren de maximale waterstand in meter.

| Jaar  | Maximale waterstand | 
|:-----:|:-----:|
| 2019  | 1,87   |
| 2018  | 1,56   |
| 2017  | 1,27   |
| 2016  | 1,21   |
| 2015  | 1,24   |
| ...   | ...   |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gegeven

Gebruik onderstaande gegevens (en de bijbehorende vectoren) om de volgende vragen te beantwoorden.

## Gevraagd

- Maak een variabele `aantal_waterstanden` aan en bewaar hierin het aantal waterstanden. (Zie onderstaande tip)

- Maax een vector `max_in_cm` aan waarbij je de waterstanden omrekent naar cm.

- Af en toe doet zich een <a href="https://en.wikipedia.org/wiki/Acqua_alta" target="_blank">Acqua Alta</a>, een overstroming, voor.
Men gebruikt de volgende tabel om te bepalen hoeveel procent van Venetië *bij benadering* onder water komt te staan:

| Waterstand (in cm)  | Percentage | 
|:----:|:-------:|
| 100  | 5%   |
| 110  | 14%  |
| 120  | 30%  |
| 130  | 43%  |
| 140  | 54%  |
| 150  | 63%  |
| 160  | 70%  |
| 170  | 74%  |
| 180  | 78%  |
| 190  | 83%  |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

    Bepaal nu de **booleaanse** variabele `lichte_overstroming` om de jaren te bepalen waar er **minstens 5% en hoogstens 30%** van Venetië onder water stond. Gebruik daarna deze variabele de jaren van lichte overstroming te **selecteren** in de variabele `jaren_lichte_overstroming`.

- Herhaal het vorige proces om de jaren te **selecteren** waarbij **minstens 70%** van Venetië onder water kwam te staan. Sla dit op in `jaren_hoge_overstroming`.


{: .callout.callout-info}
>#### Tip
>
> Gebruik de functie `length()` om het aantal elementen van een vector te bepalen.