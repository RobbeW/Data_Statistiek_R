Een maat voor de spreiding van een reeks gegevens is de gemiddelde absolute afwijking, de **mean absolute deviation** of **MAD**, gedefinieerd als

$$
    \text{MAD} = \dfrac{1}{n} \sum_{i=1}^n |x_i - \overline x|
$$

Hierbij stelt $$\overline x$$ het gewone rekenkundige gemiddelde van de rij gegevens voor.

## Gevraagd

Programmeer de functie `mad()` die gegeven een vector `data` bovenstaande gemiddelde absolute afwijking berekent en het resultaat afrond tot op 4 cijfers na de komma.

#### Voorbeeld

Indien `data` gelijk is aan de vector `c(98, 97, 98, 99, 100, 98)`, dan geldt:

```R
> mad(data)
[1] 0.7778
```

{: .callout.callout-info}
>#### Tip
>
> De absolute waarde kan je berekenen met behulp van het `abs()` functie.