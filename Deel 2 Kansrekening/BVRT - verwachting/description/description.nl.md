*Welke score verwachten we op de Benton Visual Rentention test? (BVRT)*

Deze vraag beantwoordt men door de verwachtingswaarde $$E[X]$$ (*expected value*) te berekenen. Men definieert de verwachtingswaarde van een toevalsveranderlijke als volgt:

{: .callout.callout-danger}
>### Verwachtingswaarde (discreet)
>Voor een discrete toevalsveranderlijke $$X$$ definieert men:
>
>$$E[X] = \sum_{i=1}^n \mathcal{P}(X = x_i) \cdot x_i$$

Met andere woorden, men vermenigvulidgt de kans met de variabele. Al deze waarden worden vervolgens opgeteld.

## Gegeven

Uit grootschalig onderzoek bepaalde men de volgende kansverdeling voor de score $$X$$ uit de Benton Visual Retention Test. De cumulatieve kansen werden hieraan toevoegd.

|-------------------------------|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| score $$x_i$$                 | 0       | 1       | 2       | 3       | 4       | 5       | 6       | 7       | 8       | 9       | 10      |
| kans $$\mathcal{P}(X = x_i)$$ | 0.00013 | 0.00158 | 0.01094 | 0.04328 | 0.11205 | 0.20140 | 0.24922 | 0.21341 | 0.12184 | 0.04003 | 0.00612 |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

Maak een variabele `verwachting` waarin je de verwachtingswaarde van de BVRT berekent.
