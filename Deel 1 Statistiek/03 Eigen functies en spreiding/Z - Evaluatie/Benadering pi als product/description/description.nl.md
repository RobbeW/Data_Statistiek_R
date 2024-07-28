Beschouw onderstaande oneindige uitdrukking waarvan wiskundig bewezen werd dat deze gelijk is aan $$\mathsf{\dfrac{\pi}{4}}$$.

$$
\mathsf{ \prod_{n=1}^\infty \left(1-\dfrac{1}{(2n+1)^2}\right) = \dfrac{\pi}{4}}
$$

## Gevraagd

- Maak een functie `product_pi(aantal)` waarbij `aantal` het aantal factoren uit het product voorstelt. Zo geldt dat `product_pi(2)` overeenkomt met 

$$
\mathsf{ \prod_{n=1}^2 \left(1-\dfrac{1}{(2n+1)^2}\right) = \left(1- \dfrac{1}{(2\cdot 1+1)^2}\right)\cdot \left(1-\dfrac{1}{(2\cdot 2+1)^2}\right) = \dfrac{8}{9}\cdot \dfrac{24}{25} } \approx 0.853\ldots$$

- Laat R het resultaat van het product afronden op **6 cijfers na de komma**.

#### Voorbeelden

De eerste `3` factoren van het product berekenen resulteert in:

```R
> product_pi(3)
0.835918
```

De eerste `10` factoren van het product berekenen resulteert in:

```R
> product_pi(10)
0.803446
```
