*Welke score verwachten we op de Benton Visual Rentention test? (BVRT)*

Deze vraag beantwoordt men door de verwachtingswaarde $$E[X]$$ (*expection*) te berekenen. Men definieert de verwachtingswaarde van een toevalsveranderlijke als volgt:

{: .callout.callout-danger}
>### Verwachtingswaarde (discreet)
>Voor een discrete toevalsveranderlijke $$X$$ definieert men:
>
>$$E[X] = \sum_{i=1}^n \mathcal{P}(X = x_i) \cdot x_i$$

Met andere woorden, men vermenigvulidgt de kans met de variabele. Al deze waarden worden vervolgens opgeteld.

## Gegeven

Uit grootschalig onderzoek bepaalde men de volgende kansverdeling voor de score $$X$$ uit de Benton Visual Retention Test. De cumulatieve kansen werden hieraan toevoegd.

| score $$x_i$$ | kans $$\mathcal{P}(X = x_i)$$| 
|:--:|:-------:|
| 0  | 0.00013 |
| 1  | 0.00158 |
| 2  | 0.01094 |
| 3  | 0.04328 |
| 4  | 0.11205 |
| 5  | 0.20140 |
| 6  | 0.24922 |
| 7  | 0.21341 |
| 8  | 0.12184 |
| 9  | 0.04003 |
| 10 | 0.00612 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

Maak een variabele `verwachting` waarin je de verwachtingswaarde van de BVRT berekent.
