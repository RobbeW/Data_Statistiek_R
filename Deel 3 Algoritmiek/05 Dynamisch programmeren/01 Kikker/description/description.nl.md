Een kikker springt in onderstaand roosters telkens naar het vakje rechts, of naar het vakje eronder. Welke route geeft de kleinste som?

![Geïnspireerd op een oefening uit Matrix 1.](media/image.png "Geïnspireerd op een oefening uit Matrix 1."){:data-caption="Geïnspireerd op een oefening uit Matrix 1." .light-only width="60%"}

![Geïnspireerd op een oefening uit Matrix 1.](media/image_dark.png "Geïnspireerd op een oefening uit Matrix 1."){:data-caption="Geïnspireerd op een oefening uit Matrix 1." .dark-only width="60%"}

De kikker begint steeds op het vakje links boven en moet eindigen op het vakje rechts onderaan.

## Gevraagd
Schrijf een functie `kleinste_pad(tabel)` die gegeven een matrix met gehele getallen de som bepaalt van het kleinste pad met behulp van **een dynamisch algoritme**. Je oplossing moet dus effectief het kleinste pad gaan bepalen.

#### Voorbeeld

```python
>>> kleinste_pad([[ -3,  7, -3, -6, -5, -4, -10], 
                  [  2, 10,  5, -4,  9,  1,  -9], 
                  [-10,  3, -4,  0, -6,  6,   4], 
                  [-10, 10, -1, -7, -7, -5,  -7]])
-38
```