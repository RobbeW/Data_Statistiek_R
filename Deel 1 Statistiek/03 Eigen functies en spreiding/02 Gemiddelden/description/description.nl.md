Er zijn heel wat manieren om het 'centrum' van een rij gegevens te bepalen. Het rekenkundig gemiddelde $$\overline x$$ is natuurlijk het meest gekend. Maar volgende alternatieven kunnen zeker ook gebruikt worden:

{: .callout.callout-danger}
> Het **meetkundig gemiddelde** $$x_g$$ wordt gedefinieerd als:
>
>$$x_g = \sqrt[n]{x_1 \cdot x_2 \cdot \ldots \cdot x_n} = \sqrt[n]{\prod_{i=1}^n x_i}$$


{: .callout.callout-danger}
> Het **harmonisch gemiddelde** $$x_h$$ wordt gedefinieerd als:
>
> $$\dfrac{1}{x_h} = \dfrac{1}{n} \cdot \displaystyle \sum_{i=1}^n \dfrac{1}{x_i} \qquad \text{of equivalent} \qquad x_h = \dfrac{n}{\displaystyle \sum_{i=1}^n \dfrac{1}{x_i}}$$


{: .callout.callout-danger}
> Het **kwadratisch gemiddelde** $$x_q$$ wordt gedefinieerd als:
>
> $$x_q = \sqrt{\dfrac{1}{n} \sum_{i=1}^n x_i^2}$$


## Gevraagd

- Programmeer de functies `mean_geom()`, `mean_harm()` en `mean_kwadr()` die gegeven een vector `data` als parameter respectievelijk het meetkundig, harmonisch en kwadratisch gemiddelde berekenen. Rond telkens af op 2 cijfers.

- Bepaal binnen de functies telkens eerst de variabele `n` waar je de lengte van de vector `data` in opslaat.


#### Voorbeelden

```r
> mean_geom( c(98, 97, 98, 99, 100, 98) )
[1] 98.33
```

```r
> mean_harm( c(98, 97, 98, 99, 100, 98) )
[1] 98.32
```

```r
> mean_kwadr( c(98, 97, 98, 99, 100, 98) )
[1] 98.34
```

{: .callout.callout-info}
>#### Tips
>
> - Naast `sum()` kent R ook de functie `prod()`;
> - De vierkantswortel bereken je met de functie `sqrt()`;
> - De n<sup>de</sup> wortel nemen kan via `^(1/n)`. Zo is `32^(1/5)` gelijk aan `2` want `2^5` is `32`.