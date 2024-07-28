<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

<div class="text-end" style="margin-top:15px">
    <a class="btn btn-filled with-icon" href="https://webr.r-wasm.org/latest/" target="_blank"><i class="mdi mdi-cloud-tags mdi-24" title="link"></i>Link naar WebR</a>
</div>

De internationale keten van koffiehuizen <a href="https://nl.wikipedia.org/wiki/Starbucks" target="_blank">Starbucks</a> is aanwezig in minsten 76 landen. Men verkoopt er een grote waaier aan koffiemixen en dranken op koffiebasis. Bij elk drankje kan je voor een bepaalde grootte, een hoeveelheid room, siroop, enz... kiezen. Starbucks beweert dat er <a href="file:///home/dieter/Downloads/Starbucks_Infographic-1.pdf" target="_blank">meer dan 170 000 verschillende keuzes</a> mogelijk zijn.

![De Starbucks keten](media/june-andrei-george.jpg "Foto door June Andrei George op Unsplash."){:data-caption="De Starbucks keten." width="45%"}

In deze oefening werpen we een blik op de **hoeveelheid cafeïne** in  *suikerarme* en *suikerrijke* drankjes.

## Gegeven

Deze <a href="https://github.com/rfordatascience/tidytuesday/blob/master/data/2021/2021-12-21/starbucks.csv" target="_blank">dataset</a> bevat voor verschillende keuzeopties het aantal calorieën, het aantal gram suiker, de hoeveelheid cafeïne, enz...

Je kan de data inlezen via het volgende commando:

```R
# Een dataset over Starbucks
data <- read.csv("https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-12-21/starbucks.csv", 
                 header = TRUE,
                 colClasses = c("character", rep("NULL", 3), rep("numeric", 3), rep("NULL",4), rep("numeric", 4)))
```

Gebruik `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen.
```
                            product_name serv_size_m_l calories total_fat_g total_carbs_g fiber_g sugar_g caffeine_mg
1             brewed coffee - dark roast           236        3         0.1             0       0       0         130
2             brewed coffee - dark roast           354        4         0.1             0       0       0         193
3             brewed coffee - dark roast           473        5         0.1             0       0       0         260
4             brewed coffee - dark roast           591        5         0.1             0       0       0         340
5 brewed coffee - decaf pike place roast           236        3         0.1             0       0       0          15
6 brewed coffee - decaf pike place roast           354        4         0.1             0       0       0          20
```

De kolommen spreken eigenlijk voor zich. `product_name` bevat de naam van de verschillende dranken, `serv_size_m_l` de bekermaat (in ml), `calories`, `total_fat_g`, `total_carbs_g`, `fiber_g`, `sugar_g` en `caffeine_mg` respectievelijk het aantal calorieën en daarna de hoeveelheden vet, koolhydraten, vezels, suiker en caffëine.

## Gevraagd

- Je merkt dat de dataset gegevens van hetzelfde product, maar in verschillende maten bevat. We zullen ons enkel focussen op een bekermaat van 473 ml, genaamd "*Tall*". Maar hiervoor een **booleaanse** variabele aan `grote_beker`. (In de volgende opgaves werk je telkens met deze bekermaat.)

- Volgens verschillende artsen mag een zwangere vrouw niet meer dan 200 mg cafeïne per dag consumeren. **Hoeveel** (grote) drankjes zijn er die hier **niet** aan voldoen? Sla dit op in de variabele `aantal_teveel_cafeine`.

- Onderzoek welke drankjes (`product_name`) **meer** dan een gemiddeld aantal g suiker en aantal mg cafeïne bevatten. Sla deze drankjes op in de variabele `ongezonde_drank`. **Hoeveel procent** van het aanbod is dit? Sla dit op in de variabele `ongezond_percentage` en rond af op 2 cijfers na de komma.

  Maak hiervoor zelf de nodige hulpvariabelen. Denk eraan om **enkel** te werken met de grote bekermaat.

{: .callout.callout-info}
>#### Tip
> Maak als hulpvariabelen (onder andere) vectoren aan waar je **enkel** van de grote bekermaat de hoeveelheid suiker en cafeïne in opslaat.