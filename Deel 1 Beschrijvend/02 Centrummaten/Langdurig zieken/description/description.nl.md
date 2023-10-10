De afgelopen jaren heeft België een aanzienlijke toename gezien van mensen die voor langere tijd thuis zijn vanwege ziekte. De redenen voor hun afwezigheid zijn divers, variërend van ziekte en revalidatie na ongelukken tot psychologische problemen zoals burn-outs en depressies. Hoewel deze groep uit alle lagen van de bevolking komt, zijn het vooral vrouwen, 50-plussers en mensen uit de zorgsector of het onderwijs die vaker langdurig afwezig zijn.

In 2008 waren er ongeveer 250 000 langdurig zieken die **minstens één jaar niet-actief zijn op de arbeidsmarkt**. Maar in de afgelopen 15 jaar is dit aantal verdubbeld tot meer dan een half miljoen. Als de huidige trend zich voortzet, <a href="https://www.standaard.be/cnt/dmf20230621_97071245" target="_blank">voorspelt het Planbureau</a> dat dit aantal in 2035 zelfs 600 000 zou kunnen bereiken. Deze groei van langdurig zieke mensen heeft grote economische implicaties, met een jaarlijkse kostenpost van bijna 11 miljard euro voor de sociale zekerheid. Dit komt door uitkeringen en het mislopen van inkomsten uit bijdragen uit arbeid aan de sociale zekerheid. 

## Gegeven

We voeren een onderzoek naar het aantal verloren arbeidsjaren door ziekte (de jaren waarin een persoon niet kan bijdragen aan de arbeidsmarkt en sociale zekerheid door ziekte). Daarvoor moeten we een **som** maken van het aantal langdurig zieken over de jaren heen. 

We krijgen volgende tabel: 

| Jaartal | Aantal langdurig zieken (1 jaar) |
|:-------:|:-------:|
| 2008    | 250 000 |
| 2009    | 266 667 |
| 2010    | 283 334 |
| 2011    | 300 001 |
| 2012    | 316 668 |
| 2013    | 333 335 |
| 2014    | 350 002 |
| 2015    | 366 669 |
| 2016    | 383 336 |
| 2017    | 400 003 |
| 2018    | 416 670 |
| 2019    | 433 337 |
| 2020    | 450 004 |
| 2021    | 466 671 |
| 2022    | 483 338 |
| 2023    | 500 005 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}


## Gevraagd

- Maak de variabelen `jaren` en `aantal_zieken` waar je bovenstaande gegevens in opslaat.

- Bereken het **totale aantal verloren arbeidsjaren**, sla dit op in de variabele `totaal_verloren_arbeidsjaren`.

- Bereken het gemiddeld aantal langdurige zieken per jaar, sla het resultaat op in `gemiddeld_aantal_zieken`.

- Laat R berekenen in **welke jaren** er een bovengemiddeld aantal langdurig zieken zijn. Sla het resultaat op in `jaren_met_veel_zieken`. Geef ook het **aantal jaren** met een bovengemiddeld aantal zieken, sla dit op in `aantal_jaren_met_veel_zieken`.
 
{: .callout.callout-info}
>#### Tips
>
> - De vector met de jaartallen kan je gemakkelijk aanmaken via `2008:2023`. Een handige truc!
> - Om de variabele `jaren_met_veel_zieken` aan te maken selecteer je uit de vector `jaren` de gevraagde jaren.