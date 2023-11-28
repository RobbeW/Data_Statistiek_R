<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

<div class="text-end" style="margin-top:15px">
    <a class="btn btn-filled with-icon" href="https://webr.r-wasm.org/latest/" target="_blank"><i class="mdi mdi-cloud-tags mdi-24" title="link"></i>Link naar WebR</a>
</div>

![Derrick Henry Lehmer](media/lehmer.png "Derrick Henry Lehmer"){:data-caption="Derrick Henry Lehmer" width="25%"}

Het Lehmer gemiddelde $$\mathsf{\boldsymbol{L_p}}$$ van een vector $$\mathsf{\boldsymbol{x}}$$ bestaande uit positieve getallen, genaamd naar <a href="https://nl.wikipedia.org/wiki/Derrick_Henry_Lehmer" target="_blank">Derrick Henry Lehmer</a> kan je als volgt berekenen:

$$
\mathsf{L_p(\boldsymbol{x}) = \dfrac{\displaystyle \sum_{i=1}^n x_i^p }{\displaystyle \sum_{i=1}^n x_i^{p-1}}}
$$

waarbij $$\mathsf{n}$$ de lengte van de vector voorstelt en $$\mathsf{p}$$ meestal een natuurlijk getal is. 

Zo geldt **bijvoorbeeld** bij $$\mathsf{p = 2}$$ dat:

$$
\mathsf{L_2(\boldsymbol{x}) = \dfrac{\displaystyle \sum_{i=1}^n x_i^2 }{ \displaystyle \sum_{i=1}^n x_i} = \dfrac{x_1^2 + x_2^2 + \ldots + x_n^2}{x_1+x_2+\ldots +x_n}}
$$



## Gevraagd

- Maak een functie `lehmer(vector, p)` waarbij `vector` de vector $$\mathsf{\boldsymbol{x}}$$ voorstelt en $$\mathsf{p}$$ de exponenten in de teller.

- Laat R het resultaat van het product afronden op **4 cijfers na de komma**.

#### Voorbeeld

Indien de vector $$\mathsf{\boldsymbol{x}}$$ gelijk is aan `c(1, 2, 5)` en $$\mathsf{p}$$ als waarde `2` heeft, geldt er:

```R
> lehmer( c(1, 2, 5), 2)
3.75
```