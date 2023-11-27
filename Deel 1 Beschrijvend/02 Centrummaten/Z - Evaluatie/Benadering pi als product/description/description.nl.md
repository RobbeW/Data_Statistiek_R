<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

<div class="text-end" style="margin-top:15px">
    <a class="btn btn-filled with-icon" href="https://webr.r-wasm.org/latest/" target="_blank"><i class="mdi mdi-cloud-tags mdi-24" title="link"></i>Link naar WebR</a>
</div>

Beschouw onderstaande oneindige uitdrukking waarvan wiskundig bewezen werd dat deze gelijk is aan $$\mathsf{\dfrac{\pi}{4}}$$.

$$
\mathsf{ \prod_{n=1}^\infty \left(1-\dfrac{1}{(2n+1)^2}\right) = \dfrac{\pi}{4}}
$$

## Gevraagd

- Maak een functie `product_pi(aantal)` waarbij `aantal` het aantal factoren uit het product voorstelt. Zo geldt dat `product_pi(2)` overeenkomt met 

$$
\mathsf{ \prod_{n=1}^2 \left(1-\dfrac{1}{(2n+1)^2}\right) = \color{BurntOrange}{\left(1- \dfrac{1}{(2\cdot 1+1)^2}\right)}\cdot \color{PineGreen}{\left(1-\dfrac{1}{(2\cdot 2+1)^2}\right)} = {\color{BurntOrange}\dfrac{8}{9}}\cdot {\color{PineGreen}\dfrac{24}{25}} } \approx 0.853\ldots$$

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
