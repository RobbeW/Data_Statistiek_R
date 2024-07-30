Het **inwendig product**, ook wel **inproduct** (met een $$\mathsf{\cdot}$$ als **symbool**) genoemd is een belangrijke bewerking op vectoren. Deze bewerking wordt bijvoorbeeld gebruikt bij het programmeren van 3D computergames.

Het inproduct van twee vectoren (met dezelfde lengte) $$\mathsf{\boldsymbol{x}}$$ en $$\mathsf{\boldsymbol{y}}$$ kan men berekenen als volgt:

$$
\mathsf{ \boldsymbol{x} \cdot \boldsymbol{y} = \sum_{i=1}^n x_i \cdot y_i }
$$

Waarbij $$\mathsf{n}$$ de lengte van de vector voorstelt en $$\mathsf{x_i}$$ en $$\mathsf{y_i}$$ de opeenvolgende elementen van de vector.

Een voorbeeld in 3D. Stel dat vector $$\mathsf{\boldsymbol{x}}$$ `c(1, 2, 3)` is en vector $$\mathsf{\boldsymbol{y}}$$ `c(3, -1, 2)` is. Dan berekent men $$\mathsf{\boldsymbol{x} \cdot \boldsymbol{y}}$$ als `1*3 + 2*(-1) + 3*2 = 7`. De elementen worden dus paarsgewijs vermenigvuldigd en daarna opgeteld.

## Gevraagd

- Maak een functie `inproduct(vector1, vector2)` dat gegeven twee vector `vector1` en `vector2` van dezelfde lengte het inwendig product uitrekent.

- Laat R het resultaat van het product afronden op **2 cijfers na de komma**.

#### Voorbeelden

Voor de vectoren `c(1, 2, 3)` en `c(3, -1, 2)` geldt er:

```R
> inproduct(c(1, 2, 3), c(3, -1, 2))
[1] 7
```

Voor de vectoren `c(-1,3)` en `c(3, 1)` geldt er:

```R
> inproduct(c(-1, 3), c(3, 1))
[1] 0
```
