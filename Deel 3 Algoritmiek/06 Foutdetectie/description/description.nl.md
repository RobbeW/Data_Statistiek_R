Bij het versturen van een afbeelding, of om het even welke informatie, over het internet wordt aan de onderliggende data een **beschermingsmechanisme** toegevoegd. Het kan immers voorkomen dat tijdens het versturen een bit verloren gaat. 

Eén van de mechanismes is het toevoegen van zogenaamde **pariteitsbits**. In onderstaande afbeelding zie je een eenvoudige 4x4 afbeelding. Denk aan een *matrix* opgebouwd uit de binaire 1 en 0 waarden. Aan deze afbeelding wordt vervolgens een *extra rij en kolom* toegevoegd zodat het aantal zwarte bits (die onderliggend de binaire waarde 1 voorstellen) in elke rij en elke kolom steeds **even** in.

![De pariteitsbit toevoegen.](media/image.png "De pariteitsbit toevoegen."){:data-caption="De pariteitsbit toevoegen." width="25%"}

**Na het toevoegen** van deze rij en kolom zijn de gegevens beschermd tegen eenvoudig verlies aan informatie. Stel immers dat het ene rode vakje wisselt van waarde. Doordat het aantal zwarte vakjes in deze rij en in de bijbehorende kolom niet meer even is kan je gemakkelijk de foute bit achterhalen.

## Gevraagd
In deze oefening wordt de afbeelding voorgesteld met behulp van een vierkante matrix. Deze matrix wordt opgebouwd uit `0` en `1` waarden. 

Schrijf een functie `detecteer(matrix)` die gegeven een matrix de plaats van de foutieve bit bepaalt. De coördinaat van de foutieve bit wordt vervolgens geretourneerd.

#### Voorbeeld

```python
>>> detecteer([[1, 0, 0, 1 ,0],
               [1, 1, 0, 1 ,0],
               [0, 1, 0, 1, 0],
               [0, 1, 1, 1, 1],
               [0, 1, 1, 1, 1]])
(1,3)
```
Op de **tweede rij** en de **vierde kolom** (wat neer komt op rij 1 en kolom 3) staan immers telkens een oneven aantal `1` waarden.

```python
>>> detecteer([[1, 1, 1, 1, 0, 0, 0], 
               [0, 1, 0, 0, 1, 0, 0], 
               [1, 0, 1, 0, 0, 0, 0], 
               [0, 0, 1, 1, 1, 1, 0], 
               [0, 1, 0, 1, 0, 1, 1], 
               [1, 0, 0, 1, 1, 1, 1], 
               [1, 1, 1, 1, 1, 1, 0]])
(5,3)
```
Op de zesde rij en vierde kolom vind je immers steeds een oneven aantal `1` waarden.