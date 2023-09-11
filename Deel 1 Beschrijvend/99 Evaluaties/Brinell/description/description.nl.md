Om de **hardheid** van een materiaal in een getal te bevatten werd de Brinellhardheid in 1900 door <a href="https://nl.wikipedia.org/wiki/Johan_August_Brinell" target="_blank">Johan August Brinell</a> uitgevonden.

Bij deze methode wordt een stalen kogel (of een kogel van wolfraamcarbide bij hardere materialen) gedurende een korte periode (ca. 10 seconden) met een bepaalde kracht in een ander materiaal gedrukt. Nadien meet men de diameter van de indrukking.

![Een deuk van Brinell test.](media/Brinell_dent.jpg "Foto door IGW op Wikimedia Commons."){:data-caption="Een deuk van Brinell test." width="45%"}

De formule om de Brinell hardheid $$HB$$ te bepalen werkt dan als volgt:

$$
\text{HB} = 0,102 \cdot \dfrac{2 \cdot F}{\pi \cdot D (D - \sqrt{D^2 - d^2})}
$$

Men gebruikt **standaard** een kracht $$F$$ van 29 500 N en een stalen bol met diameter $$D$$ 10 mm om de deuk te maken.

## Gegeven

Men test verschillende materialen en bekomt de volgende meetresultaten:

| Materiaal             | d (in mm)  | 
|:---------------------:|:----------:|
| Mild staal            | 5,6082     |
| Gehardend staal       | 4,0982     |
| Gehardend aluminium   | 6,7124     |
| Koper                 | 8,8425     |
| Zachte messing        | 7,2415     |
| Gietijzer             | 3,0014     |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}


## Gevraagd

- Vul onderstaande variabelen `kracht_F` en `diameter_D` aan met de standaardwaarden.

- Maak een variabele `diameter_d` aan waar je de diameters als een vector in opslaat. (Behoud de volgorde uit de tabel)

- Maak een vector `brinell` aan waar je de Brinell harheid uitrekent met bovenstaande formule.

- NOG EEN SELECTIE OFZO + Meer materialen?