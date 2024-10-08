Beschouw onderstaande oneindige uitdrukking waarvan wiskundig bewezen werd dat deze gelijk is aan $$\mathsf{\dfrac{2}{3}}$$.

$$
\mathsf{ \prod_{n=2}^\infty \dfrac{n^3-1}{n^3+1} = \dfrac{2}{3}}
$$

Opgelet, het **product** begint hier **vanaf 2**!

## Gevraagd

- Maak een functie `product_breuk(aantal)` waarbij `aantal` het aantal factoren uit het product voorstelt. Zo geldt dat `product_breuk(3)` overeenkomt met een product van **drie** factoren. (waarbij $$\mathsf{n}$$ van 2 tot en met 4 gaat)

$$
\mathsf{ \prod_{n=2}^4 \dfrac{n^3-1}{n^3+1} = \dfrac{2^3-1}{2^3+1} \cdot \dfrac{3^3-1}{3^3+1}\cdot \dfrac{4^3-1}{4^3+1}  = \dfrac{7}{9} \cdot \dfrac{26}{28} \cdot \dfrac{63}{65} = 0.7}
$$

- Laat R het resultaat van het product afronden op **6 cijfers na de komma**.

#### Voorbeelden

De eerste `3` factoren van het product berekenen resulteert in:

```R
> product_breuk(3)
[1] 0.7
```

De eerste `10` factoren van het product berekenen resulteert in:

```R
> product_breuk(10)
[1] 0.671717
```

{: .callout.callout-warning}
>#### Opgelet!
> De parameter `aantal` stelt het **aantal factoren** voor. Indien `aantal` gelijk is aan 3 dan betekent dat dat er **drie factoren** zijn.