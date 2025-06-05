Gegeven een lijst van gehele getallen, kan je deze dan in 3 deellijsten onderverdelen zodat de som van elke deellijst aan elkaar gelijk is?

Hieronder zie je zo'n lijst waar dit mogelijk is. De drie deellijsten hebben namelijk telkens eenzelfde som.

![Verdeel in 3 deellijsten.](media/image.png "Verdeel in 3 deellijsten."){:data-caption="Verdeel in 3 deellijsten." .light-only height="45px"}

![Verdeel in 3 deellijsten.](media/image_dark.png "Verdeel in 3 deellijsten."){:data-caption="Verdeel in 3 deellijsten." .dark-only height="45px"}

## Gevraagd
Programmeer een functie `deellijst(lijst)` die gegeven een lijst nagaat of deze te verdelen valt in drie deellijsten met eenzelfde som. Je mag de getallen uit de lijst **niet** verplaatsen en elke deellijst moeten aansluitend zijn. Je retourneert `True` indien het lukt en `False` indien het niet lukt.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> deellijst([0, 2, 1, -6, 6, -7, 9, 1, 2, 0, 1])
True
```
Waarbij elke deellijst als som 3 heeft.

```python
>>> deellijst([0, 2, 1, -6, 6, 7, 9, -1, 2, 0, 1])
False
```
Hier lukt het niet...


```python
>>> deellijst([3, 3, 6, 5, -2, 2, 5, 1, -9, 4])
True
```
Waarbij elke deellijst als som 6 heeft.