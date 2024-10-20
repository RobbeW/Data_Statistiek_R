Eén van de disciplines op de olympische spelen is het gewichtheffen. Zoals beschreven door <a href="https://sporza.be/nl/2024/07/10/drie-pogingen-in-de-snatch-en-clean-jerk-het-olympische-gewichtheffen-uitgelegd~1720605908255/" target=_blank>Sporza</a> verloopt zo'n wedstrijd in **twee delen**. 

![Afbeelding door Victor Freitas op Unsplash.](media/victor-freitas.jpg "Afbeelding door Victor Freitas op Unsplash."){:data-caption="Afbeelding door Victor Freitas op Unsplash." width="50%"}

Het eerste deel heet "**snatch**", in dit onderdeel moet je het gewicht vanop de grond in één vloeiende beweging tot boven het hoofd heffen.

Het tweede deel noemt men "**clean & jerk**", hierbij mag de deelnemer het gewicht laten rusten ter hoogte van de schouders voordat deze het gewicht in de lucht steekt.

Voor beide onderdelen mag de deelnemer telkens 3 pogingen ondernemen. Ze kiezen zelf hoeveel kilogram ze aan de staaf hangen per poging. Op het einde wordt de beste totaalmassa bepaalt.

## Gevraagd
Schrijf een functie `gewichtheffen(resultaten)` met een dictionary `resultaten` als parameter . Deze dictionary heeft als sleutel de naam van de atleet en als waarde een lijst met 6 pogingen. De eerste 3 pogingen zijn de resultaten op het onderdeel "snatch", de laatste 3 de resultaten op het onderdeel "clean & jerk".

Indien een atleet bijvoorbeeld maar twee pogingen (van de drie) ondernam, of indien een poging werd afgekeurd, dan werd `"-"` ingevoerd.

Een mogelijke dictionary kan er dus als volgt uitzien:

```python
resultaten = {
    "Karlos Nasar": [173, 177, 180, 213, 224, "-"],
    "Yeison Lopez": [175, 180, "-", 205, 210, "-"],
    "Antonino Pizzolato": [172, "-", "-", 212, "-", "-"],
    "Marin Robu": [170, 175, "-", 200, 208, "-"]
}
```

De functie moet de naam van de winnaar retourneren.

#### Voorbeeld

Bij het bovenstaande voorbeeld is de `return` waarde:
```python
>>> gewichtheffen(resultaten)
Karlos Nasar
```