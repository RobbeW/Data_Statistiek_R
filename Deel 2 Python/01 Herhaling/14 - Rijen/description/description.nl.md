Een **rekenkundige rij** is een rij waarbij het **verschil** tussen elke opeenvolgende waarde constant is. Indien de startwaarde bijvoorbeeld 5 is en het verschil 2, dan ziet de rij er als volgt uit:

$$
    \mathsf{5,\qquad 7,\qquad 9,\qquad 11,\qquad 13,\ldots}
$$

Dit programma zal voor twee opeenvolgende waarden de eerstvolgende 8 waarden van de rij bepalen.

```python
a = int( input( 'Geef een waarde in:' ) )
b = int( input( 'Geef de volgende waarde in:' ) )

v = b - a
print( 1, ':', a )
print( 2, ':', b )
for i in range( 10 ):
    b = b + v
    print( i+3, ':', b )
```

## Opgave

Een **meetkundige rij** is een rij waarbij het **quotiënt** tussen elke opeenvolgende waarde constant is. Is de startwaarde bijvoorbeeld 5 en het quotiënt 2, dan ziet de rij er als volgt uit:

$$
    \mathsf{5,\qquad 10,\qquad 20,\qquad 40,\qquad 80,\ldots}
$$

Pas nu het bovenstaande programma aan zodat voor twee opeenvolgende **komma**getallen de eerstvolgende 8 waarden van de meetkundige rij bepaald worden. Rond hierbij in de **weergave** af op 2 cijfers. (**Niet** in de berekeningen)

#### Voorbeelden
Invoer van de getallen `5.0` en `10.0` leidt tot:
```
1 : 5.0
2 : 10.0
3 : 20.0
4 : 40.0
5 : 80.0
6 : 160.0
7 : 320.0
8 : 640.0
9 : 1280.0
10 : 2560.0
```

Invoer van de getallen `102.0` en `112.2` leidt tot:
```
1 : 102.0
2 : 112.2
3 : 123.42
4 : 135.76
5 : 149.34
6 : 164.27
7 : 180.7
8 : 198.77
9 : 218.65
10 : 240.51
```
