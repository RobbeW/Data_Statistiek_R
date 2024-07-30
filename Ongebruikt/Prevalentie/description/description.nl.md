<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

<div class="text-end" style="margin-top:15px">
    <a class="btn btn-filled with-icon" href="https://webr.r-wasm.org/latest/" target="_blank"><i class="mdi mdi-cloud-tags mdi-24" title="link"></i>Link naar WebR</a>
</div>

**Prevalentie** $$p$$ is een zeer belangrijk begrip in de studie van ziektes. Het is de kans op het voorkomen van een ziekteverschijnsel of aandoening in een bepaalde populatie. Bijvoorbeeld: de prevalentie van obesitas in de Verenigde Staten werd in 2001 geschat op ongeveer 21%. Met andere woorden, de kans dat een willekeurig gekozen Amerikaan obees is, is ongeveer 21%.

De centrale vraag is natuurlijk, **hoe schat je de prevalentie?** De meest voor de hand liggende methode is om het aantal gevallen te delen door de populatiegrootte. Zijn er 21 obese personen op 100 mensen, dan is het logisch om de prevalentie (kans op) obesitas te schatten op 21%.

In 1998 formuleerde de Amerikaanse statistici Alan Agresti en Brent Coull een **alternatieve** schatter $$\hat p$$ voor de prevalentie:

$$
\hat p = \dfrac{X+2}{n+4}
$$

waarbij $$X$$ het aantal gevallen met die ziekte of aandoening voorstelt en $$n$$ het totale aantal gevallen. Het voorstel van Agresti & Coull doet het vooral beter bij hoge of lage prevalenties.

## Gevraagd

- Maak eerst een functie `agresti_coull(vector)` waarbij `vector` een **booleaanse vector** voorstelt. De functie berekent dan de prevalentie op basis van bovenstaande formule. Rond het percentage af op 2 cijfers na de komma.

  Zo moet bijvoorbeeld gelden dat: `agresti_coull( c(TRUE, TRUE, FALSE, TRUE, FALSE) )` gelijk is aan $$\dfrac{3+2}{5+4} \approx 55,55\%$$.

  In het vervolg van deze opgave ga je de functie toepassen op de NHANES (National Health and Nutrition Examination Survey) dataset. Deze data bevat heel wat informatie over een pak Amerikanen in de periode van 2009 en 2012. Via onderstaande code kan je de dataset ophalen:

  ```R
# NHANES dataset
data <- read.csv("https://raw.githubusercontent.com/GTPB/PSLS20/master/data/NHANES.csv",
                 header = TRUE)
data <- na.omit(data[, c("Gender","Age","BMI","Diabetes", "DaysMentHlthBad", "AlcoholYear")])
data$Diabetes <- data$Diabetes == "Yes"
rownames(data) <- seq_len(nrow(data))
colnames(data) <- c("gender","age","bmi","diabetes","days_bad_mental_health","days_alc")
  ```

  Een inleidende blik krijgen we via `head(data)`, er werd een beperkte selectie van de grote hoeveelheid data gemaakt.
  ```
    gender age   bmi   diabetes days_bad_mental_health days_alc
1   male  34 32.22      FALSE                     15        0
2   male  34 32.22      FALSE                     15        0
3   male  34 32.22      FALSE                     15        0
4 female  49 30.57      FALSE                     10       20
5 female  45 27.24      FALSE                      3       52
6 female  45 27.24      FALSE                      3       52
  ```

  `diabetes` is een **booleaanse kolom**, met `TRUE` indien de persoon diabetes heeft. De kolom `days_bad_mental_health` bevat op hoeveel van de laatste 30 dagen de persoon zich mentaal slecht voelde. `days_alc` bevat het aantal dagen op het voorbije jaar dat de persoon alcohol dronk.

- Het doel is nu de (Agresti-Coull) **prevalentie** van diabetes te bepalen **in de groep** die **weinig** versus **veel acohol** gebruikt. Bepaal hiervoor eerst de variabele `mediaan_alc` waarin je de mediaan bepaalt van het aantal dagen waarop alcohol werd gedronken.

- Maak nu de **booleaanse** vector `weinig_alc` waar je in opslaat welke personen **minder** dan het mediane aantal dagen alcohol gebruikten.

- Selecteer nu uit de kolom `diabetes` de personen die weinig alcohol gebruiken. Gebruik daarna de vorige functie `agresti_coull()` en deze nieuwe vector om de prevalentie van diabetes in deze groep te schatten. Sla dit op in `p_diabetes_weinig_alc`.

- Doe daarna hetzelfde voor de prevalentie in de groep die veel acohol gebruikt, sla dit op in `p_diabetes_veel_alc`.