De **begrensde herhaling** vormt een **essentieel** programmeerconcept.

In plaats van onderstaande code:

```python
print("Het getal is", 0)
print("Het getal is", 1)
print("Het getal is", 2)
print("Het getal is", 3)
print("Het getal is", 4)
print("Het getal is", 5)
```

schrijft men:
```python
for i in range(6):
    print("Het getal is", i)
```

Indien we noteren `range(6)` dan neemt de variablee `i` achtereenvolgens **zes waarden** aan, namelijk `0`, `1`, `2`, `3`, `4` en `5`. Wil je enkel de cijfers van 1 tot en met 5 dan gebruikt men het onderstaande:

```python
for i in range(1, 6): # in dit geval begint de lus met 1
    print("Het getal is", i)
```


## Opgave
Het volgende stukje code berekent het product $$\mathsf{n \cdot x}$$ via een **begrensde herhaling**. In deze herhaling wordt de optelling herhaaldelijk gebruikt want $$\mathsf{n\cdot x = x + x + \ldots + x}$$.

```python
n = int( input( 'n = ' ) )
x = int( input( 'x = ' ) )

product = 0
for i in  range( n ):
    # Tel bij het product telkens de waarde x op
    product = product + x

# Uiteindelijk werd x, n keren opgeteld bij 0...
print( product ) 
```

Hoe moet je deze code aanpassen zodat je er de machtsverheffing $$\mathsf{x^n}$$ mee kan programmeren: $$\mathsf{x^n = x\cdot x \cdot \ldots \cdot x}$$?


#### Voorbeelden
Bij de invoer `8` en `2` verschijnt er:
```
256
```

Voor invoer `3` en `5` verschijnt er:
```
125
```