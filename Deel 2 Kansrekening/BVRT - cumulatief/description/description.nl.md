*Hoe groot is de kans dat een kind een score van 5 of minder behaalt op de Benton Visual Retention Test (BVRT)?*

Dit soort vragen worden typisch opgelost met een **cumulatieve kansverdeling**. Indien $$X$$ de score uit de BVRT voorstelt dan bepaalt men het antwoord op bovenstaande vraag via:

$$
\mathcal{P}(X \leqslant 5) = \mathcal{P}(X = 0) + \mathcal{P}(X = 1) + \mathcal{P}(X = 2) + \mathcal{P}(X = 3) + \mathcal{P}(X = 4) + \mathcal{P}(X = 5) \approx 37\%
$$

In R kan je dit gemakkelijk laten berekenen via het commando `cumsum` (cumulatieve som).

Het is natuurlijk logisch dat $$\mathcal{P}(X \leqslant 10 ) = 1$$. Waarom?

## Gegeven

Uit grootschalig onderzoek bepaalde men de volgende kansverdeling voor de score $$X$$ uit de Benton Visual Retention Test. De cumulatieve kansen werden hieraan toevoegd.

|-------------------------------|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|:-------:|
| score $$x_i$$                 | 0       | 1       | 2       | 3       | 4       | 5       | 6       | 7       | 8       | 9       | 10      |
| kans $$\mathcal{P}(X = x_i)$$ | 0.00013 | 0.00158 | 0.01094 | 0.04328 | 0.11205 | 0.20140 | 0.24922 | 0.21341 | 0.12184 | 0.04003 | 0.00612 |
| cumulatieve kans $$\mathcal{P}(X < x_i)$$ | 0.00013 | 0.00171 | 0.01265 | 0.05593 | 0.16798 | 0.36938 |  |  |  |  |  |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

Maak een variabele `kanssom` waarin je de som van alle kansen bepaalt. Dit stelt $$\mathcal{P}(X \leqslant 10)$$ voor.

Maak een nieuwe vector `kansen_cumulatief` die de gecumuleerde relatieve frequenties bevat.

**Print** daarna de kans om een score van 8 of minder te behalen $$\mathcal{P}(X \leqslant 8)$$ op de BVRT.