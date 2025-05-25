Gegeven een lijst van gehele getallen, kan je deze dan in 3 partities onderverdelen zodat de som van elke partitie aan elkaar gelijk is?

Hieronder zie je zo'n lijst waar dit mogelijk is. De drie gebieden hebben namelijk telkens eenzelfde som.

![Verdeel in 3 partities.](media/image.png "Verdeel in 3 partities."){:data-caption="Verdeel in 3 partities." .light-only height="45px"}

![Verdeel in 3 partities.](media/image_dark.png "Verdeel in 3 partities."){:data-caption="Verdeel in 3 partities." .dark-only height="45px"}

## Gevraagd
Programmeer een functie `partitie(lijst)` die gegeven een lijst nagaat of deze te verdelen valt in drie partities met eenzelfde som. Je mag de getallen uit de lijst **niet** verplaatsen en de partities moeten aansluitend zijn. Je retourneert `True` indien het lukt en `False` indien het niet lukt.

Bestudeer onderstaande voorbeelden grondig.

#### Voorbeelden

```python
>>> partitie([0, 2, 1, -6, 6, -7, 9, 1, 2, 0, 1])
True
```
Waarbij elke partitie als som 3 heeft.

```python
>>> partitie([0, 2, 1, -6, 6, 7, 9, -1, 2, 0, 1])
False
```


```python
>>> partitie([3, 3, 6, 5, -2, 2, 5, 1, -9, 4])
True
```
Waarbij elke partitie als som 6 heeft.