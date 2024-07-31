
Jullie hebben reeds geleerd over de inverse functie van de exponentiële functie, namelijk de **logaritmische** functie. Zo geldt er dat de logaritme met grondtal 10 van 1000 gelijk is aan 3, immers 10³ = 1000.

De natuurlijke logaritme, namelijk de logaritme met het getal van Euler (e) als grondtal wordt echter het meest gebruikt. Het rekentoestel kan bijvoorbeeld $$\mathsf{\log_e(2)}$$ ook wel genoteerd als $$\mathsf{\ln(2)}$$ prima uitrekenen, namelijk 0,69314718.

Dit gebeurt door middel van een oneindige som, er zijn verschillende opties. Beschouw bijvoorbeeld onderstaande som:

$$
\mathsf{\sum_{k = 1}^\infty \dfrac{1}{k\cdot 2^k} = \dfrac{1}{2} + \dfrac{1}{8} + \dfrac{1}{24} + \dfrac{1}{64}+\ldots}
$$

Hiervan is bewezen dat deze uiteindelijk in $$\mathsf{\log_e(2)}$$ resulteert.

## Gevraagd

- Maak een functie `ln_benadering(aantal)` waarbij `aantal` het aantal termen uit de som voorstelt. Zo geldt dat `ln_benadering(3)` overeenkomt met 

$$
\mathsf{ \dfrac{1}{2} + \dfrac{1}{8} + \dfrac{1}{24} \approx 0,66\ldots}
$$

- Laat R het resultaat van het product afronden op **6 cijfers na de komma**.

#### Voorbeelden

De eerste `3` termen van de som berekenen resulteert in:

```R
> ln_benadering(3)
[1] 0.666667
```

De eerste `10` termen van de som berekenen resulteert in:

```R
> ln_benadering(10)
[1] 0.693065
```
