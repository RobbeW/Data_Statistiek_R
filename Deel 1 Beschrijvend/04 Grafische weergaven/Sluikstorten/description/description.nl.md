![Zwerfvuil.](media/lucas-van-oort.jpg "Foto door Lucas Van Oort op Unsplash."){:data-caption="Zwerfvuil." width="40%"}

## Gegeven

Sluikstorten is een echte plaag. In Gent kan je onder andere via een app een melding maken, want hoe sneller zwerfvuil wordt opgeruimd, hoe minder dit aantrekt. Het overzicht van alle meldingen uit 2023 vind je <a href="https://data.stad.gent/explore/dataset/sluikstort-meldingen-gent-2023/" target="_blank">hier</a>.

Dit inladen in R kan via:

```R
# Benodigde bibliotheken
library(dplyr)
library(lubridate)

# Importeert de data van Stad Gent en vormt om
src <- read.csv2("https://data.stad.gent/api/explore/v2.1/catalog/datasets/sluikstort-meldingen-gent-2023/exports/csv",
                  sep = ";" )
src$datum <- as.Date(src$gemaakt_op)
data <- as.data.frame( src %>% group_by(jaar = year(datum), dag =wday(datum, week_start = 1, label= TRUE)) %>% count())
colnames(data) <- c("jaar","dag","aantal")
```

In de uiteindelijke dataframe vind je een overzicht met het aantal meldingen per dag. Dit ziet er als volgt uit:

```
  jaar dag aantal
1 2023  ma  10926
2 2023  di  10326
3 2023  wo  11134
4 2023  do  10101
5 2023  vr   8289
6 2023  za   4152
7 2023  zo   5056
```

## Gevraagd

- Bepaal het totale aantal meldingen in de variabele `totaal`.
- Sla in een vector `percentages` op hoeveel procent van de meldingen kwamen op maandag, dinsdag, enz... Rond af op **één cijfer na de komma**.
- Maak onderstaande grafiek na.

{: .callout.callout-info}
>#### Tip
> Kies zelf een kleur en vergeet de titel en labels op de x- en y-as niet.
> Het verwerken van de dataset kan een tijdje in beslag nemen want ze bevat bijna 60 000 meldingen.

![Percentage meldingen sluikstorten 2023.](media/plot.png "Percentage meldingen sluikstorten 2023."){:data-caption="Percentage meldingen sluikstorten 2023." .light-only width="480px"}

![Percentage meldingen sluikstorten 2023.](media/plot_dark.png "Percentage meldingen sluikstorten 2023."){:data-caption="Percentage meldingen sluikstorten 2023." .dark-only width="480px"}