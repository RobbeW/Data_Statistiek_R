## Gevraagd

Schrijf een functie `verwissel(lijst, index)` die gegeven een lijst met getallen en een index de lijst aanpast zodat **vanaf de index** tot het einde van de lijst telkens de opeenvolgende elementen `x` en `y` onderzocht worden. Als `x` groter is dan `y` **wissel deze dan om** en onderzoek de volgende index.

Je retourneert uiteindelijk de lijst.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> verwissel([6, 5, 3, 1, 8, 7, 2], 1)
[6, 3, 1, 5, 7, 2, 8]
```
Eerst worden `5` en `3` omgewisseld. De lijst is nu `[6, 3, 5, 1, 8, 7, 2]`.

Daarna worden `5` en `1` omgewisseld. De lijst is nu `[6, 3, 1, 5, 8, 7, 2]`.

Element `5` en `8` moeten niet omgewisseld worden.

Elementen `8` en `7` moeten omgewisseld worden. De lijst is nu `[6, 3, 1, 5, 7, 8, 2]`

Tot slot worden ook `8` en `2` omgewisseld. Je bekomt `[6, 3, 1, 5, 7, 2, 8]` 


```python
>>> verwissel([1, 2, 8, 7, 4, 3], 3)
[1, 2, 8, 4, 3, 7]
```
Het element met index `3`, namelijk `7` is immers groter dan het volgende element. Vandaar deze omgewisseld worden: `[1, 2, 8, 4, 7, 3]`.

Vervolgens wordt opnieuw gekeken naar het element `7`. Dit is wederom groter dan het volgende element `3`. Dus worden ze van plaats verwisseld.

```python
>>> verwissel([1, 2, 8, 7, 4, 3], 2)
[1, 2, 7, 4, 3 ,8]
```
Eerst worden `8` en `7` omgewisseld, daarna `8` en `4` en tot slot `8` en `3`. 

```python
>>> verwissel([2, 1, 3, 4, 5], 1)
[2, 1, 3, 4, 5]
```
Hier gebeurt niets, want vanaf index `1` zijn de getallen opeenvolgend steeds kleiner.
