Jullie weten uit het hoofd dat:

$$
\mathsf{\sin \dfrac{\pi}{3} = \dfrac{\sqrt{3}}{2} \approx 0,86602540}
$$

Maar hoe berekent een computer de sinus van een *willekeurige* hoek?

Computers berekenen voor een hoek $$\mathsf{x}$$ (in radialen uitgedrukt natuurlijk) de hoekgrootte door middel van een *oneindig* product:

$$
\mathsf{\sin x = x \cdot \prod_{i=1}^\infty \left( 1 - \dfrac{x^2}{\pi^2\cdot i^2})}
$$

## Gevraagd

We programmeren deze berekning voor de hoek $$\mathsf{x = \dfrac{\pi}{3}}$$, in dit geval ziet de vorige formule er als volgt uit:

$$
\mathsf{\sin \dfrac{\pi}{3} = \dfrac{\pi}{3} \cdot \prod_{i=1}^\infty \left( 1 - \dfrac{1}{9\cdot i^2})}
$$

- Maak een functie `sin_benadering(aantal)` waarbij `aantal` het aantal factoren uit het product voorstelt. Zo geldt dat `sin_benadering(3)` overeenkomt met 

$$
\mathsf{ \dfrac{\pi}{3} \cdot \left( 1-\dfrac{1}{9\cdot 1^2}\right)\cdot \left(1-\dfrac{1}{9\cdot 2^2}\right)\cdot  \left( 1-\dfrac{1}{9\cdot 3^2}\right) \approx 0,893813}
$$

- Laat R het resultaat van het product afronden op **6 cijfers na de komma**.

#### Voorbeelden

De eerste `3` factoren van het product berekenen resulteert in:

```R
> sin_benadering(3)
0.893813
```

De eerste `10` factoren van het product berekenen resulteert in:

```R
> sin_benadering(10)
0.875233
```
