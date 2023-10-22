Binnen de wiskunde kan men het **rekenkundig-meetkundig gemiddelde** van een rij getallen berekenen, men noemt dit ook wel het **arithmetic–geometric mean** (AGM). 

Dit gemiddelde is gedefinieerd als de **limiet** van het opeenvolgend rekenkundig en meetkundig gemiddelde. Stel dat het rekenkundig gemiddelde $$a_0$$ van een reeks getallen $$33$$ is, en het meetkundig gemiddelde $$g_0 = 6$$ is. Dan berekent men in de volgende stap:

$$
a_1 = \dfrac{1}{2} (a_0+g_0) = 19,5 \qquad \text{en} \qquad g_1 = \sqrt{a_0\cdot g_0} \approx 14,07
$$

Men **herhaalt** hierna dit proces met de getallen $$a_1 = 19,5$$ en $$g_1 \approx 14,07$$. Met andere woorden $$a_2 = \dfrac{1}{2}(a_1 + g_1)$$ en $$g_2 = \sqrt{a_1 \cdot g_1}$$, enz...

Op zich kan dit proces zich oneindig lang herhalen, maar in de praktijk zal men dit stoppen na 10 iteraties.

## Gevraagd

Programmeer de functie `mean_geom()` die gegeven een vector `data` het meetkundige gemiddelde implementeert. **Rond** hierbij **niet af**.

Maak vervolgens een functie `agm()` die gegeven een vector `data` eerst `a_0` (via `mean()`) en `g_0` (via `mean_geom()`) berekent en vervolgens het bovenstaande proces 10 keer uitvoert. Uiteindelijk `return` je de berekende waarde van `a_10`.

{: .callout.callout-info}
>#### Tips
>
> - In deze oefening moet je dus **twee** functies programmeren. `mean_geom()` kan je wel uit een vorige oefening recupereren.
> - Gebruik een `for` lus. 
> - 10 keer herhalen doe je via `for (i in 1:10)`.