De **rij van Recamán** is genoemd naar de bedenker Bernardo Recamán Santos. De rij start met het getal 0 en nadien de volgende formule:

$$
  \mathsf{r_i =} \begin{cases}
  \mathsf{r_{i-1}-(i-1)} & \mathsf{\text{als } r_{i-1}-(i-1) > 0\text{ en niet al in de rij}}\\
  \mathsf{r_{i-1}+(i-1)} & \mathsf{\text{anders}}
  \end{cases}
$$

De rij begint dus als volgt: 0, 1, 3, 6, 2, 7, 13, 20, 12, 21, 11, 22, 10, 23, 9,...

## Gevraagd

Maak een functie `recaman(n)` waarbij `n` het rangnummer voorstelt. Zo geldt er dat `recaman(4)` overeenkomt met het getal 6.

#### Voorbeelden

```R
> recaman(2)
[1] 1
```

```R
> recaman(3)
[1] 3
```

```R
> recaman(5)
[1] 2
```

```R
> recaman(6)
[1] 7
```

{: .callout.callout-info}
>#### Tips
>
> - Werk enkel met die lus indien `n` groter is dan 1 en gebruik dus `i in 2:n` als iteratievoorwaarde;
> - Gebruik de `%in%` operator in R, via `getal %in% rij`, zo geldt `25 %in% c(0, 5, 10, 25) = TRUE`;
> - Laat de rij telkens aangroeien via `rij <- c(rij, nieuw_getal)`.