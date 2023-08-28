Er zijn heel wat manieren om het 'centrum' van een rij gegevens te bepalen. Het rekenkundig gemiddelde $$\overline x = \dfrac{1}{n} \sum_{i=1}^n x_i$$ is natuurlijk de bekendste soort. Maar volgende alternatieven kunnen zeker ook gebruikt worden:

Het **meetkundig gemiddelde** $$x_g$$ wordt gedefinieerd als:

$$
x_g = \sqrt[n]{x_1 \cdot x_2 \cdot \ldots \cdot x_n} = \sqrt[n]{\prod_{i=1}^n x_i} 
$$

Het **harmonisch gemiddelde** $$x_h$$ wordt gedefinieerd als:

$$
x_h = \dfrac{n}{\sum_{i=1}^n \dfrac{1}{x_i}}
$$

Het **kwadratisch gemiddelde** $$x_q$$ wordt gedefinieerd als:

$$
x_q = \sqrt{\dfrac{1}{n} \sum_{i=1}^n x_i^2}
$$

## Gegeven

In een bebouwde kom worden de volgende snelheden opgemeten.

```R
snelheden <- c(67.4, 48.9, 40.7, 43.5, 49.8, 54.1)
```

## Gevraagd

- Om efficient te kunnen werken bepaal je eerst een variabele `n` waar je de lengte van de `snelheden` in opslaat;
- Bereken het **meetkundige gemiddelde** in variabele `x_g`;
- Bereken het **harmonisch gemiddelde** in variabele `x_h`;
- Bereken het **kwadratisch gemiddelde** in variabele `x_q`.

{: .callout.callout-info}
>#### Tips
>
> - Naast `sum()` kent R ook de functie `prod()`;
> - De vierkantswortel bereken je met de functie `sqrt()`;
> - De n<sup>de</sup> wortel nemen kan via `^(1/n)`. Zo is `32^(1/5)` gelijk aan `2` want `2^5` is `32`.