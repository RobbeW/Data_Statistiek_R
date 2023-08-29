Eén van de belangrijkste spreidingsmaten is ongetwijfeld de **variantie** $$\sigma^2$$. Deze werd gedefinieerd als *de gemiddelde kwadratische afwijking ten opzichte van het rekenkundig gemiddelde*, of in symbolen:

$$
    \sigma^2 = \dfrac{1}{n} \sum_{i=1}^n (x_i - \bar x)^2
$$

Daarna was het eenvoudig om de **standaardafwijking** te berekenen, namelijk $$\sigma = \sqrt{\sigma^2}$$

Stel nu dat je in een steekproef van 20 patiënten de systolische bloeddruk bepaalt. Je wilt die meetgegevens gebruiken om de variantie te schatten. Het lijkt het gemakkelijkst om bovenstaande formule te gebruiken, echter wordt die in de praktijkt niet gebruikt. Indien men een steekproef neemt en de onderliggende variantie wil schatten gebruikt men de **steekproefvariantie**. Gedefinieerd als:

$$
    s^2 = \dfrac{1}{n-1} \sum_{i=1}^n (x_i - \bar x)^2
$$

Zoals je merkt, het enige verschil zit in de noemer van de breuk. Men kan wiskundig aantonen dat deze schatter beter presteert dan een deling door de volledig steekproefomvang $$n$$. Men zegt ook wel dat $$s^2$$ **unbiased** is als schatter van de variante van de steekproef.

![Populatiegegevens schatten.](media/rafael-as-martins.jpg "Foto door Rafael AS Martins op Unsplash"){:data-caption="Populatiegegevens schatten." width="45%"}

## Opgave
Simulatiestudie van vang hervang, niet duidelijk hoe aan te pakken...