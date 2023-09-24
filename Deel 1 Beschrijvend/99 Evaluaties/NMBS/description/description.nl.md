<div class="text-end">
<a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

De stiptheid van de Belgische spoorwegen blijft een gevoelig punt. Infrabel deelt via zijn <a href="https://opendata.infrabel.be/explore" target="_blank">Open Data</a> geneutraliseerde cijfers van de stiptheid. **Geneutraliseerd** betekent dat vertragingen ten gevolge van kabeldiefstallen, agressie, ... niet werden meegerekend.

![Een NMBS Desiro trein in Brugge.](media/warre-van-de-wouwer.jpg "Foto door Warre Van de Wouwer op Unsplash."){:data-caption="Een NMBS Desiro trein in Brugge." width="45%"}

## Gegeven

Maak gebruik van <a href="https://opendata.infrabel.be/explore/dataset/nationale-stiptheid-per-maand/table/?sort=maand" target="_blank">deze dataset</a>, die je kan inlezen via:

```R
# Stiptheidsscijfers Infrabel
data <- read.csv("https://opendata.infrabel.be/api/explore/v2.1/catalog/datasets/nationale-stiptheid-per-maand/exports/csv",
                 sep = ";", header = TRUE,
                 colClasses = c("NULL", "character", rep("numeric", 5)))
# De kolommen hernoemen
colnames(data) <- c("maand", "stiptheid", "aantal", "aantal_min_6", "totale_min_vertraging", "stiptheid_neutr")
```

Gebruik `head(data)` om een **voorsmaakje** van de gegevens te verkrijgen. De kolom `data$stiptheid` stelt de stiptheidscijfers voor (in procenten), `data$stiptheid_neutr` stelt de stiptheid na **neutralisatie** voor. Deze cijfers zijn dus beter.

Er is ook een kolom `data$totale_min_vertraging` met het **totale aantal minuten vertraging**. De kolom `data$aantal` geeft het totale **aantal treinritten** en `data$aantal_min_6` geeft het aantal treinritten met **minder dan 6 minuten vertraging**.

## Gevraagd

- Bepaal de maanden waar de stiptheidscijfers na neutralisatie **minder** dan 90% waren. Bepaal dus eerst de relevante booleaanse vector en gebruik deze om de maanden te selecteren. Sla het resultaat op in `maanden_slechte_stiptheid`.

- Maak een vector aan `aantal_met_vertraging` waar je het aantal treinen met **minimaal 6 minuten** vertraging in opslaat. Door nu het totale aantal minuten vertraging te delen door deze kolom maak je een schatting van het *gemiddeld aantal minuten ernstige vertraging*. Sla dit resultaat op in de variabele `gemiddeld_min_vertraging`. Rond dit af op **twee cijfers**.

- In welke maanden waren er veel vertragingen te wijten aan externe factoren, zoals kabeldiefstal, agressie, personen op het spoor, enz...? Bereken het **verschil** tussen de stiptheidscijfers met neutralisatie en deze zonder. Bepaal de mediaan van dit verschil in de variabele `mediaan_stiptheidsverschil`. Bepaal nu de maanden waar het verschil groter is dan het dubbele van deze mediaan. Sla dit op in `maanden_met_externe_factoren`.