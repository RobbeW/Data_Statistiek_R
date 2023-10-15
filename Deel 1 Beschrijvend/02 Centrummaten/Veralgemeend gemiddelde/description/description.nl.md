In de vorige oefening programmeerde je het **kwadratische** gemiddelde:

{: .callout.callout-secondary}
> Het **kwadratisch gemiddelde** $$x_q$$ wordt gedefinieerd als:
>
> $$x_q = \sqrt{\dfrac{1}{n} \sum_{i=1}^n x_i^2}$$

Er bestaat echter ook een **kubisch** gemiddelde:

{: .callout.callout-secondary}
> Het **kubisch gemiddelde** $$x_c$$ wordt gedefinieerd als:
>
> $$x_c = \sqrt[3]{\dfrac{1}{n} \sum_{i=1}^n x_i^3}$$

Dit gemiddelde heeft bepaalde eigenschappen waardoor het bijvoorbeeld goed werkt bij het voorspellen van de levensduur van mechanische onderdelen. Dit gemiddelde valt echter nog verder te **veralgemenen**:

{: .callout.callout-danger}
> Het **veralgemeend gemiddelde** of het **Hölder gemiddelde** $$x_H$$ wordt gedefinieerd als:
>
> $$x_H = \sqrt[p]{\dfrac{1}{n} \sum_{i=1}^n x_i^p}$$

## Gevraagd

Programmeer de functie `mean_generalized()` die gegeven een vector `data` **en** een parameter `p` het veralgemeend gemiddelde berekent.
Rond telkens af op 2 cijfers.