In medisch onderzoek is het vaak essentieel om verschillende patiëntgegevens bij te houden, zoals hun namen en specifieke gezondheidsgegevens. In deze oefening zullen we R gebruiken om enkele variabelen combineren in een **data frame**

Antistoffen vormen een onderdeel van het lichamelijke afweer- en immuunsysteem. Deze stoffen worden aangemaakt na vaccinatie of infectie. Bij de bestrijding van de COVID-pandemie kon men twee soorten antistoffen vastellen, namelijk N-antistoffen en S-antistoffen. N-antistoffen worden alleen aangemaakt na een infectie met het coronavirus en niet na vaccinatie. De S-antistoffen worden enkel aangemaakt na vaccintatie.

![Het Astra-Zeneca COVID-19-vaccin ChAdOx1.](media/brano.jpg "Foto door Braño op Unsplash."){:data-caption="Het Astra-Zeneca COVID-19-vaccin ChAdOx1." width="45%"}

## Gegeven

Stel je voor dat je een onderzoeker bent die werkt aan een kleine studie waarbij vijf patiënten bij betrokken zijn. Van deze patiënten werd twee weken na hun eerste vaccinatie en twee weken na de eerste boosterprik het aantal S-antistoffen bepaald. Het aantal antistoffen wordt uitgedrukt in *Binding Antibody Units per ml* oftewel *BAU/ml*.

| Naam patiënt | S-antistoffen na vaccinatie | S-antistoffen na booster|
|:-----:|:----:|:------:|
| Alice | 3705 | 22293  |
| Bob   | 3601 | 14571  |
| Karen | 4100 | 25415  |
| David | 2574 | 18971  |
| Eva   | 3910 | 38600  |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

- Maak drie variabelen `namen`, `antistoffen_basis` en `antistoffen_booster` met de respectievelijke waarden.

- **Combineer** deze in een data frame `coviddata` via het volgende commando:

```R
coviddata <- data.frame("namen" = namen,
                        "basis" = antistoffen_basis,
                        "booster" = antistoffen_booster)
```
- Bereken tot slot hoeveel antistoffen er **bijkwamen** na het toedienen van de boosterprik. Sla dit resultaat op in de variabele `booster`. Gebruik bij deze berekening de **accessor** `$` op het data frame. Bijvoorbeeld `coviddata$booster`.


