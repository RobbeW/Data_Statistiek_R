Misschien speelde je ooit het gezelschapsspel 'Mastermind'. In dit spel is het de bedoeling dat je een geheime kleurcode raadt. Elke beurt krijg je twee getallen die je op weg helpen, r: het aantal kleuren dat je reeds goed hebt en s: het aantal kleuren dat voorkomen maar op een foute positie staan.

![Het gezelschapspel Mastermind.](media/mastermind.png "Het gezelschapspel Mastermind."){:data-caption="Het gezelschapspel Mastermind.." width="40%"}

Stel bijvoorbeeld dat de juiste code in volgorde **paars**, **rood**, **geel** en **wit** is. Indien de tegenspeler in volgorde **paars**, **blauw**, **wit** en **geel** gokt dan is r = 1 en s = 2. Paars staat immers op de juiste plaats en geel en wit komen voor, maar staan op de foute plaats.

## Gevraagd
Schrijf een functie `mastermind(code, gok)` dat gegeven twee lijsten `code` en `gok` de waarden van r en s bepaalt. De kleuren worden voorgesteld met behulp van één enkele letter. Het resultaat (r, s) moet je retourneren als een tupel

Bestudeerd grondig onderstaande voorbeelden:

#### Voorbeelden

```python
>>> mastermind(["P", "R", "G", "W"], 
               ["P", "B", "W", "G"])
(1, 2)
```

```python
>>> mastermind(["B", "W", "G", "G"], 
               ["G", "W", "B", "B"])
(1, 2)
```
Want `"W"` staat op de juiste plaats en `"G"` en `"B"` uit de gok komen ook voor in de code, maar op een andere plaats. Merk op dat slechts één `"B"` uit de gok meegeteld wordt. Eenmaal een kleur gematched werd, dan kan het niet nog eens gebruikt worden.

```python
>>> mastermind(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M"], 
               ["N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"])
(0, 0)
```