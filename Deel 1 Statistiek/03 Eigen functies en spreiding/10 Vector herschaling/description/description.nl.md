Algoritmes binnen machine learning of artificiële intelligentie gaan vectoren vaak **herschalen** tot ze lengte 1, **eenheidslengte**,  hebben.

We illustreren dit met een voorbeeld. Stel dat je een vector `c(3,4)` hebt. (Denk hierbij aan het punt met coördinaat (3,4)) dan heeft deze een lengte van 5, immers $$\mathsf{\sqrt{3^2+ 4^2} = 5}$$. Door de oorspronkelijke vector te **delen door deze lengte** krijg je een nieuwe vector `c(0.6, 0.8)`. Deze vector heeft als lengte 1, want $$\mathsf{\sqrt{0.6^2+ 0.8^2} = \sqrt{0.36+0.64} = \sqrt{1.0} = 1}$$.

Een tweede voorbeeld in **drie** dimensies. Beschouw de vector `c(12,16,15)`, de lengte hiervan kan je analoog berekenen via $$\mathsf{\sqrt{12^2+ 16^2+15^2} = 25}$$. Door elk element van de vector nu te delen door dit getal bekomt men de nieuwe vector met lengte 1, namelijk `c(0.48, 0.64, 0.60)`.

Dit valt perfect te veralgemenen tot vier of meer dimensies. De algemene formule is dus:

$$
    \mathsf{x_{\text{herschaald}} = \dfrac{x}{\sqrt{x_1^2+x_2^2+\ldots + x_n^2}}}
$$

Of in woorden:
- Bepaal eerst de lengte van de vector (via de formule in de noemer);
- Deel elk element van de oorspronkelijke vector door deze lengte;

## Gevraagd

Programmeer de functie `eenheidslengte()` die gegeven een vector `data` deze herschaalt naar eenheidslengte. Rond de herschaalde vector af **op 4 cijfers** na de komma.

#### Voorbeelden

Indien `data` gelijk is aan de vector `c(3, 4)`, dan geldt:

```R
> eenheidslengte(data)
[1] 0.6 0.8
```

Indien `data` gelijk is aan de vector `c(12, 16, 15)`, dan geldt:

```R
> eenheidslengte(data)
[1] 0.48 0.64 0.60
```
