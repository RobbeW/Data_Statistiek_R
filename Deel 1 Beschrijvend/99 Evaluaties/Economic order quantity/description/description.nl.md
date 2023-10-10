<div class="text-end">
<a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

Om voorraadproblemen te voorkomen, wordt de **EOQ** (Economic Order Quantity) gebruikt als wiskundige methode om te berekenen hoe vaak en in welke hoeveelheid een bestelling bij een leverancier moet worden geplaatst. De meest gebruikt formule werd ontwikkeld door <a href="https://en.wikipedia.org/wiki/Ford_Whitman_Harris" target="_blank">Ford W. Harris</a>. Deze formule gaat als volgt:

$$
Q = \sqrt{\dfrac{2\cdot D \cdot K}{h}}
$$

waarbij $$Q$$ de optimale bestelhoeveelheid is, $$D$$ de jaarlijkse vraag, $$K$$ de kosten per bestelling en $$h$$ de kosten voor de opslag in een magazijn.

![Stockage van goederen.](media/petrebels.jpg "Foto door Petrebels op Unsplash."){:data-caption="Stockage van goederen." width="45%"}

#### Voorbeeld
Stel dat men jaarlijks 12 000 schoenen ($$D$$) van een bepaald type verkoopt. Elke bestelling gaat gepaard met wat kosten, denk maar aan verzending, reclame, controle van betaling, enz... Stel dat men dit op €43 schat ($$K$$). De bestelling in een opslagruimte bewaren komt natuurlijk ook met een kostprijs, bvb €2,85 ($$h$$). 

De formule toepassen leidt dan tot:

$$
Q = \sqrt{\dfrac{2\cdot 12\,000 \cdot 43}{2,85}} \approx 600
$$

Het is dus optimaal om die 12 000 schoenen op te splitsen in 600 **aparte bestellingen**. In dit geval dus telkens een bestelling van **20** schoenen.

## Gegeven
Je mag in het vervolg van deze oefening ervan uitgaan dat de kost voor opslag steeds €2,85 is. Daarnaast krijg je onderstaande tabel met gegevens van verschillende goederen, hun jaarlijkse vraag en de kosten per bestelling.

| Voorwerpen / goederen     | Jaarlijkse vraag  | Kost per bestelling | 
|---------------------------|:-----------------:|:-------------------:|
| Ontstekings auto (bougie) | 20 000            | €60                 |
| Bepaald type smartphone   | 5 000             | €100                |
| Bepaald geneesmiddel      | 30 000            | €200                |
| McDonalds burgers         | 100 000           | €40                 |
| Bestverkopende boeken     | 10 000            | €80                 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

- **Vul** de gegevens in de code **aan**. Respecteer de volgorde uit de gegeven tabel.

- Bereken telkens het optimale aantal bestellingen **EOQ** ($$Q$$) in de variabele `eoq`. **Rond af** op 0 cijfers na de komma.

- Bereken hoeveel items in elk **aparte** bestelling moeten zitten en bewaar dit in de variabele `aantal_te_bestellen`. Rond dit af naar boven met behulp van het commando `ceiling()` (Tip: lees het voorbeeld opnieuw indien je niet weet hoe je dit moet berekenen.)

- Je krijgt in onderstaande code reeds een vector `goederen`. **Selecteer** hieruit die goederen waarvan er telkens **minstens 15** items besteld moeten worden. Sla dit op in `grote_bestelling`.
