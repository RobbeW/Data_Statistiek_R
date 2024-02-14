## Gegeven

<a href="https://be.openfoodfacts.org/" target="_blank">Open Food Facts</a> is een gratis, online en crowdsourced database van voedingsmiddelen van over de hele wereld. Net zoals Wikipedia kan iedereen er informatie over voeding aan toevoegen. Het resultaat is ondertussen een gigantische databank met een schat aan informatie. Er bestaat bijvoorbeeld een smartphone app en na het scannen van een barcode krijg je informatie over hoe gezond het product is.

![Open Food Facts.](media/off.jpg "Open Food Facts."){:data-caption="Open Food Facts." width="40%"}

Via onderstaande code kan je de laatste informatie opvragen over producten die verkocht worden in Belgische afdelingen van Delhaize.
```R
# Importeert de data van OpenFoodFacts en vormt om
data <- read.csv2("https://mirabelle.openfoodfacts.org/products.csv?sql=select+last_updated_datetime%2C+product_name%2C+nutriscore_score%2C+nutriscore_grade%2C+nova_group%2C+ecoscore_score%2C+ecoscore_grade%2C+%5Benergy-kcal_100g%5D%2C+fat_100g%2C+%5Bsaturated-fat_100g%5D%2C+carbohydrates_100g%2C+sugars_100g%2C+fiber_100g%2C+proteins_100g%2C+salt_100g++from+%5Ball%5D+where+%22countries_en%22+like+%3Ap0+and+%22ecoscore_score%22+is+not+null+and+%22nova_group%22+is+not+null+and+%5Benergy-kcal_100g%5D+is+not+null+and+%22nutriscore_score%22+is+not+null+and+%22stores%22+like+%3Ap1&p0=%25Belgium%25&p1=%25Delhaize%25&_size=max",
                  sep = ",", dec=".")
colnames(data) <- c("update", "naam", "nutriscore", "nutri", "nova", "ecoscore", "eco", "kcal", "vet", "verz_vet", 
                    "koolhydr", "suiker", "vezels", "eiwit", "zout")
data$update <- as.Date(data$update)
data$nutri <- toupper(data$nutri)
data$eco <- toupper(data$eco)
```

via `head(data)` krijgen we een (beperkt) overzicht van deze gegevens:

```
      update                   naam nutriscore nutri nova ecoscore eco kcal vet verz_vet koolhydr suiker vezels eiwit zout
1 2024-02-09     Ananas in Scheiben         -3     A    1       77   B   53   0        0    14.04  12.28    0.9  0.40 0.00
2 2024-02-09              Aprikosen          2     B    4       90   A   58   0        0    13.00  12.00    0.6  0.04 0.40
3 2024-02-09 Pfirsiche halbe Frucht          1     B    4       86   A   60   0        0    15.00  11.00    0.8  0.40 0.05
4 2024-02-09       Aprikosenhälften          1     B    4       82   A   60   0        0    14.00  12.00    0.6  0.40 0.07
5 2024-02-09        Piña en rodajas         -3     A    1       76   B   63   0        0    14.00  12.00    0.6  0.40 0.00
```

Er hoort wat extra informatie bij deze gegevens. De kolom `update` geeft aan wannneer de gegevens laatst werden aangepast. `nutriscore` bevat een beoordeling over de *gezondheid* van het product. De kolom `nutri` geeft een beoordeling van A (gezond) tot E (ongezond). `ecoscore` bevat een beoordeling over de ecologische impact van het product (zowel qua verpakking als bijvoorbeeld transport). De kolom `eco` zet dit om in een beoordeling A (zeer goed) tot E (zeer slecht). De kolom `nova` geeft aan hoe bewerkt het voedsel is, van 1 (minimaal bewerkt) tot 4 (ultrabewerkt). 

De andere kolommen bevatten voedingsinformatie. `kcal` bevat het aantal kilocalorieën per 100g. `vet` en `verz_vet` het aantal gram vetten en verzadidge vetzuren per 100g. Analoog voor de kolommen koolhydraten (`koolhydr`), `suiker`, `vezels`, `eiwit` en `zout`.

## Gevraagd

Bevatten ongezondere producten ook meer kilocalorieën (dus meer energie)?

- We beschouwen in onze analyse **enkel** producten met een ecoscore `A` of `B`. Maak dus een **booleaanse** vector `ecologisch` aan, waarin je opslaat welke producten deze ecoscore hebben. Tip: *of* programmeer je in R met behulp van `|`.

- Maak onderstaande boxplot (enkel van de ecologische producten!) en gebruik als kleuren `green4`, `chartreuse3`, `gold2`, `darkorange2` en `firebrick2`

![Gemiddeld aantal minuten vertraging per tijdstip.](media/plot.png "Gemiddeld aantal minuten vertraging per tijdstip."){:data-caption="Gemiddeld aantal minuten vertraging per tijdstip." .light-only width="480px"}

![Gemiddeld aantal minuten vertraging per tijdstip.](media/plot_dark.png "Gemiddeld aantal minuten vertraging per tijdstip."){:data-caption="Gemiddeld aantal minuten vertraging per tijdstip." .dark-only width="480px"}
