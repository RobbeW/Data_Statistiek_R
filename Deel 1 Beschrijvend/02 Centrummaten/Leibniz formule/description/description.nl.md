De Leibniz-rij is een alternerende benadering voor het getal $$\pi$$, gevonden door <a href="https://nl.wikipedia.org/wiki/Gottfried_Wilhelm_Leibniz" target="_blank">Gottfried Wilhelm Leibniz</a>. Hij kon namelijk bewijzen dat:

$$
  \dfrac{\pi}{4} = 1 -\dfrac{1}{3} + \dfrac{1}{5} - \dfrac{1}{7}+\ldots
$$

![Gottfried Wilhelm Leibniz, schilderij door Christoph Bernhard Francke.](media/Leibniz.jpg "Gottfried Wilhelm Leibniz, schilderij door Christoph Bernhard Francke."){:data-caption="Gottfried Wilhelm Leibniz, schilderij door Christoph Bernhard Francke." width="35%"}

## Gevraagd

Maak een functie `leibniz(aantal)` waarbij `aantal` het aantal termen in de som voorstelt. Zo geldt dat `leibniz(2)` overenkomt met $$1-\dfrac{1}{3} = 0,66\ldots$$.

- Laat R het resultaat van de som afronden op **6 cijfers na de komma**.

- Je kan **controleren** of het resultaat inderdaad Eulers vondst benaderde. Probeer bijvoorbeeld `leibniz(10000)` uit te rekenen en controleer of dit `pi / 4` benadert.

 
{: .callout.callout-info}
>#### Tips
>
> - Oneven getallen maak je met de formule `2*n-1`.
> - Het alternateren kan je gemakkelijk bepalen via `(-1)^(1:n)`. Indien de exponent even is, is dit `1`, anders is dit `-1`.