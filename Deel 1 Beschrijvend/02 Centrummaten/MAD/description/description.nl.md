Een maat voor de spreiding van een reeks gegevens is de gemiddelde absolute afwijking, de **mean absolute deviation** of **MAD**, gedefinieerd als

$$
    MAD = \dfrac{1}{n} \sum_{i=1}^n |x_i - \overline x|
$$

Hierbij stelt $$\overline x$$ het gewone rekenkundige gemiddelde van de rij gegevens voor.

## Gevraagd

Programmeer de functie `mad()` die gegeven een vector `data` bovenstaande gemiddelde absolute afwijking berekent en het resultaat afrond tot op 4 cijfers na de komma.

{: .callout.callout-info}
>#### Tip
>
> De absolute waarde kan je berekenen met behulp van het `abs()` functie.