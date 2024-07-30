De **rij van Jacobsthal** is genoemd naar Ernst Jacobsthal. De rij start met de getallen 0 en 1 en nadien telkens de som van het dubbele van het getal ervoor met het getal er net voor. Er geldt dus voor elk element $$j_i$$ (met $$i \geqslant 3 $$):

$$
  j_i = j_{i-1}+2\cdot j_{i-2}
$$

De rij begint dus als volgt: 0, 1, 1, 3, 5, 11, 21, 43, 85, ...

## Gevraagd

Maak een functie `jacobsthal(n)` waarbij `n` het rangnummer voorstelt. Zo geldt er dat `jacobsthal(4)` overeenkomt met het getal 3.
 
#### Voorbeelden

```R
> jacobsthal(3)
[1] 1
```

```R
> jacobsthal(4)
[1] 3
```

```R
> jacobsthal(5)
[1] 5
```

```R
> jacobsthal(6)
[1] 11
```

{: .callout.callout-info}
>#### Tips
>
> - Gebruik een `for` lus;
> - Werk enkel met die lus indien `n` groter is dan 2 en gebruik dus `i in 3:n` als iteratievoorwaarde;
> - Laat de rij telkens aangroeien via `rij <- c(rij, nieuw_getal)`.