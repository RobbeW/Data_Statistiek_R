Iedereen houdt van pizza: margherita, vier kazen, napoletana, salami, capricciosa, enz...

De beroemde <a href="https://nl.wikipedia.org/wiki/Pizza_margherita" target="_blank">pizza margherita</a> is genoemd naar de Italiaanse koningin Margherita di Savoia. Er wordt gezegd dat de kok Raffaele Esposito de koningin wou charmeren met een pizza die de kleuren van de Italiaanse vlag had (groen - basilicum, wit - kaas en rood - tomaat). Sommige mensen zeggen echter dat koningin Margherita geen ui lustte en daarom geen andere keuze had dan deze pizza.

![Foto door Amirali Mirhashemian op Unsplash.](media/amirali-mirhashemian.jpg "Foto door Amirali Mirhashemian op Unsplash."){:data-caption="Foto door Amirali Mirhashemian  op Unsplash." width="50%"}

In onze keuken worden de ingredienten voorgesteld door hoofdletters `"A"`, `"B"`, `"C"`, `"D"`, ... Dus om een pizza `"MARGHERITA"` te maken zijn er dus evenveel ingrediënten nodig als er letters zijn, dat wil zeggen één `"M"`, twee keer `"A"`, twee keer `"R"`, één `"G"`, één `"H"`, één `"E"`,  één `"T"` en één `"I"`.

Stel bijvoorbeeld dat we de volgende ingrediënten hebben:

```python
["A", "A", "A", "A", "M", "M", "R", "R", "R", "R", "G", "G", "H", "H", "E", "E", "T", "T", "I", "I", "I"]
```

dan kan men twee pizza's margherita maken en is er één `"I"` op overschot.

## Gevraagd
Schrijf een functie `pizza(ingredienten)` die gegeven een lijst met ingrediënten bepaalt hoeveel pizza's margherita men kan maken. De ingrediëntenlijst kan ingrediënten bevatten die niet nodig zijn en er kunnen ook ingrediënten overblijven.


#### Voorbeelden

```python
>>> pizza(["A", "A", "A", "A", "M", "M", "R", "R", "R", "R", "G", "G", "H", "H", "E", "E", "T", "T", "I", "I", "I"])
2
```

```python
>>> pizza(["M", "A", "R", "G", "H", "E", "R", "I", "T", "A"])
1
```

```python
>>> pizza(["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"])
0
```


{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *I ❤ Pizza*, Universiteit van Valladolid (UVa). 
