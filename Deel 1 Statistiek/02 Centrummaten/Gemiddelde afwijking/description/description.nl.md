Een ander belangrijk begrip binnen de statistiek is de **variantie** en **standaardafwijking** van een reeks gegevens.
De **steekproef**variantie $$s^2$$ van een rij $$(x_1,x_2, \ldots, x_n)$$ met ($$n$$ het aantal gegevens) wordt gedefinieerd als:

$$
s^2 = \dfrac{1}{n-1} \sum_{i=1}^n (x_i - \overline x)^2
$$

Hierbij stelt $$\overline x$$ het gewone rekenkundige gemiddelde van de rij gegevens voor.

De **steekproef**standaardafwijking $$s$$ kan men nadien eenvoudig berekenen via:

$$
    s = \sqrt{s^2}
$$

## Gevraagd

Programmeer de functie `var_steekproef()` die gegeven een vector `data` bovenstaande steekproefvariantie berekent en het resultaat afrond tot op 4 cijfers na de komma.

Programmeer **daarna** de fucntie `sd_steekproef()` die gegeven een vector `data` de steekproefstandaardafwijking uitrekent. Gebruik **in deze functie de vorige functie** en rond het resultaat af op 4 cijfers na de komma.


#### Voorbeeld

Indien `data` gelijk is aan de vector `c(98, 97, 98, 99, 100, 98)`, dan geldt:

```R
> var_steekproef(data)
1.0667
```

en 

```R
> sd_steekproef(data)
1.0328
```