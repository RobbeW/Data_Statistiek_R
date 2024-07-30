De faculteit van een natuurlijk getal $$n$$, genoteerd als $$n!$$ (en gelezen als $$n$$ faculteit), is het product van de getallen 1 tot en met n:

{: .callout.callout-danger}
> $$n! = \prod_{i=1}^n i = 1\cdot 2\cdot 3\cdot \ldots \cdot n$$

Voor 5 geldt dus dat 5! = 1 · 2 · 3 · 4 · 5 = 120.

Ook 0! bestaat, dit werd gedefinieerd als 0! = 1.

## Gevraagd

Maak een functie `faculteit(getal)`. Er geldt bijvoorbeeld dat `faculteit(5)` gelijk is aan 120.

#### Voorbeelden

Het speciale geval `0` heeft als uitvoer:

 ```R
 > faculteit(0)
[1] 1
 ```

Het product van de eerste `5` factoren:

 ```R
 > faculteit(5)
[1] 120
 ```

{: .callout.callout-info}
>#### Tip
>
> - Gebruik de keuzestructuur `if` om het geval waarbij `getal` 0 is apart op te vangen.