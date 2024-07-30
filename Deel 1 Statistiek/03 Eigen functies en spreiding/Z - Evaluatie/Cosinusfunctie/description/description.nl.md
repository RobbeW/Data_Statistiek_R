Jullie weten uit het hoofd dat:

$$
\mathsf{\cos \dfrac{\pi}{6} = \dfrac{\sqrt{3}}{2} \approx 0,86602540}
$$

Maar hoe berekent een computer de cosinus van een *willekeurige* hoek?

Computers berekenen voor een hoek $$\mathsf{x}$$ (in radialen uitgedrukt natuurlijk) de goniometrische waarde door middel van een *oneindig* product:

$$
\mathsf{\cos x =  \prod_{n=1}^\infty \left( 1 - \dfrac{4\cdot x^2}{\pi^2 (2n-1)^2} \right)}
$$

## Gevraagd

We programmeren deze formule voor de hoek $$\mathsf{x = \dfrac{\pi}{6}}$$, in dit geval ziet de vorige formule er (na vereenvoudiging) als volgt uit:

$$
\mathsf{\cos x =  \prod_{n=1}^\infty \left( 1 - \dfrac{1}{9\cdot (2n-1)^2} \right)}
$$

- Maak een functie `cos_benadering(aantal)` waarbij `aantal` het aantal factoren uit het product voorstelt. Zo geldt dat `cos_benadering(3)` overeenkomt met 

$$
\mathsf{ \left(1-\dfrac{1}{9\cdot 1^2}\right)\cdot \left(1-\dfrac{1}{9\cdot 3^2}\right)\cdot \left(1-\dfrac{1}{9\cdot 5^2}\right)   \approx 0.8740131078}
$$

- Laat R het resultaat van het product afronden op **9 cijfers na de komma**.

#### Voorbeelden

De eerste `3` factoren van het product berekenen resulteert in:

```R
> cos_benadering(3)
[1] 0.8740131078
```

De eerste `10` factoren van het product berekenen resulteert in:

```R
> cos_benadering(10)
[1] 0.8684324820
```
