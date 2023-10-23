Binnen de wiskunde kan men het **rekenkundig-meetkundig gemiddelde** van een rij getallen berekenen, men noemt dit ook wel het **arithmetic–geometric mean** (AGM). 

Dit gemiddelde is gedefinieerd als de **limiet** van het opeenvolgend rekenkundig en meetkundig gemiddelde. Stel dat het rekenkundig gemiddelde $$a_0$$ van een reeks getallen $$33$$ is, en het meetkundig gemiddelde $$g_0 = 6$$ is. Dan berekent men in de volgende stap:

$$
a_1 = \dfrac{1}{2} (a_0+g_0) = 19,5 \qquad \text{en} \qquad g_1 = \sqrt{a_0\cdot g_0} \approx 14,07
$$

Men **herhaalt** hierna dit proces met de getallen $$a_1 = 19,5$$ en $$g_1 \approx 14,07$$. Met andere woorden $$a_2 = \dfrac{1}{2}(a_1 + g_1)$$ en $$g_2 = \sqrt{a_1 \cdot g_1}$$, enz...

Op zich kan dit proces zich oneindig lang herhalen, maar in de praktijk zal men dit stoppen na 10 iteraties. Voor het vorige voorbeeld met $$a_0 = 33$$ en $$g_0 = 6$$ wordt het resultaat:

| $$i$$ | $$a_i$$ |$$g_i$$ | 
|:-----:|:-------:|:------:|
| 0     | 33      | 6      |
| 1     | 19,5  | 14,071 247 279 470 288    |
| 2     | 16,785 623 639 735 142  | 16,564 701 082 412 280   |
| 3     | 16,<u>67</u>5 162 361 073 709   | 16,<u>67</u>4 796 492 733 754   |
| 4     | 16,<u>674 979 42</u>6 903 732  | 16,<u>674 979 42</u>5 900 286  |
| 5     | ...   | ...    |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

## Gevraagd

Programmeer de functie `mean_geom()` die gegeven een vector `data` het meetkundige gemiddelde implementeert. **Rond** hierbij **niet af**.

Maak vervolgens een functie `agm()` die gegeven een vector `data` eerst `a_0` (via `mean()`) en `g_0` (via `mean_geom()`) berekent en vervolgens het bovenstaande proces 10 keer uitvoert. Uiteindelijk `return` je de berekende waarde van `a_10`.

{: .callout.callout-info}
>#### Tips
>
> - In deze oefening moet je dus **twee** functies programmeren. `mean_geom()` kan je wel uit een vorige oefening recupereren.
> - Gebruik een `for` lus. 
> - 10 keer herhalen doe je via `for (i in 1:10)`.