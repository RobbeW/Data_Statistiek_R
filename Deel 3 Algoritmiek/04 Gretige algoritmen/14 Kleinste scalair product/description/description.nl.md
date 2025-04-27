Gegeven zijn twee vectoren $$\mathsf{\vec{a} = (x_1,x_2,\ldots, x_n)}$$ en $$\mathsf{\vec{b} = (y_1,y_2, \ldots, y_n)}$$ met eenzelfde lengte. Het scalair (of inwendig) product wordt als volgt gedefinieerd:

$$
\mathsf{\vec{a} \cdot \vec{b} = x_1\cdot y_1 + x_2\cdot y_2 + \ldots + x_n\cdot y_n = \sum_{i=1}^n x_i \cdot y_i}
$$

Stel dat het toegelaten is om de verschillende coördinaten van $$\mathsf{\vec{a}}$$ en $$\mathsf{\vec{b}}$$ te wijzigen, zoek dan het kleinst mogelijke scalaire product.

## Gevraagd
Programmeer een functie `minimaal_scalair_product(a, b)` die gegeven twee vectoren `a` en `b` als lijsten het kleinste scalaire product bepaalt.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> minimaal_scalair_product([1, 3, -5], [-2, 4, 1])
-25
```

```python
>>> minimaal_scalair_product([1, 2, 3, 4, 5], [1, 0, 1, 0, 1])
6
```

{: .callout.callout-secondary}
>#### Bron
> Google Code Jam 2008 Round 1A
