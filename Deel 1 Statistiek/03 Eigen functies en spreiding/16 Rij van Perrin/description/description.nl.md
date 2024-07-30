De **rij van Perrin** is genoemd naar François Perrin. Deze rij blijkt interessant bij de studie van priemgetallen.

De rij is gedefinieerd als startende met de getallen 3, 0, 2 en nadien telkens de som van de twee **voorlaatste** getallen (er wordt telkens één getal tussen gelaten). Er geldt dus voor elk element $$p_i$$ (met $$i \geqslant 4 $$):

$$
  p_i = p_{i-2} + p_{i-3}
$$

De rij begint dus als volgt: 3, 0, 2, 3, 2, 5, 5, 7, 10, 12, 17, ...

## Gevraagd

Maak een functie `perrin(n)` waarbij `n` het rangnummer voorstelt. Zo geldt er dat `perrin(4)` overeenkomt met het getal 3.

#### Voorbeelden

```R
> perrin(3)
[1] 2
```

```R
> perrin(4)
[1] 3
```

```R
> perrin(5)
[1] 2
```

```R
> perrin(6)
[1] 5
```

{: .callout.callout-info}
>#### Tips
>
> - Gebruik een `for` lus;
> - Werk enkel met die lus indien `n` groter is dan 3 en gebruik dus `i in 4:n` als iteratievoorwaarde;
> - Laat de rij telkens aangroeien via `rij <- c(rij, nieuw_getal)`.