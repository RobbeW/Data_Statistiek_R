In de statistiek is de **mean squared error** (MSE) een belangrijke maat voor het verschil tussen een voorspelling en de realiteit.

{: .callout.callout-danger}
> De **mean squared error** $$\text{MSE}$$ wordt gedefinieerd als:
>
> $$\text{MSE} = \dfrac{1}{n} \sum_{i=1}^n (y_i - \hat y_i)^2$$

Hierbij stelt $$y_i$$ de **echte** waarde voor en $$\hat y_i$$ de **voorspelde** waarde.

#### Voorbeeld
Stel dat een fysicus een experiment uitvoert waarbij de *lengte* (in mm) van een aluminium staaf bepaald wordt bij verschillende *temperaturen* (in °C). Onderstaande tabel bevat de meetresultaten:

| temperatuur $$x_i$$ | lengte $$y_i$$ | 
|:-------------------:|:--------------:|
| 20                  | 1 000,02       |
| 60                  | 1 000,96       |
| 100                 | 1 001,82       |
| 120                 | 1 002,75       |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

Met behulp van deze gegevens kan de fysicus een **regressieanalyse** (best passende grafiek zoeken) uitvoeren en wordt een verband tussen temperatuur en lengte gevonden, bijvoorbeeld de volgende formule (bij lineaire regressie)

$$
    \hat y_i = 0,026\cdot x_i + 999,44
$$

Op deze manier kan de lengte ook voorspeld worden voor temperaturen die **niet gemeten** werden, zoals bijvoorbeeld 50°C. Maar ook voor de gemeten (echte) waarden zal de voorspelling niet exact overeenkomen, het blijft immers een voorspelling.

| temperatuur $$x_i$$ | lengte $$y_i$$ | voorspelde lengte $$\hat y_i$$ | 
|:-------------------:|:--------------:|:------------------------------:|
| 20                  | 1 000,02       | 999,96                         | 
| 60                  | 1 000,96       | 1 001,00                       |
| 100                 | 1 001,82       | 1 002,04                       |
| 120                 | 1 002,75       | 1 002,56                       |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

Het gemiddelde kwadratische verschil tussen $$\hat y_i$$ en $$y_i$$ noemt men de **mean squared error**.

## Gevraagd

Programmeer de functie `mse()` die gegeven **twee** vectoren `echt` en `voorspelling` als parameters de mean squared error berekent.
**Rond** deze **af** op 3 cijfers na de komma.

#### Voorbeelden

Stel dat `echt` gelijk is aan de vector `c(1000.02, 1000.96, 1001.82, 1002.75)` en `voorspelling` aan `c(999.96, 1001.00, 1002.04, 1002.56)`, dan verschijnt er:

```R
> mse(echt, voorspelling) 
[1] 0.022
```

Een waarde van `0.022` is *klein*, dat betekent dat er een goede voorspelling werd gemaakt.


Geldt er nu dat `echt` gelijk is aan `c(1000.02, 1000.96, 1001.82, 1002.75)` en `voorspelling` aan `c(950.34, 987.15, 1011.71, 1034.18)`, dan verschijnt er:

```R
> mse(echt, voorspelling)
[1] 936.119
```
De waarde `936.199` is *veel groter*, dit betekent dat de voorspelling veel slechter is.