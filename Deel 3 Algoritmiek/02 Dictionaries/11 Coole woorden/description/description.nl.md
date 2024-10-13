Men noemt een woord *cool* indien het woord minstens twee letters heeft en elke letter en verschillend aantal keer voorkomt.

Er geldt bijvoorbeeld dat het woord `"ada"` *cool* is, want `"a"` komt twee keer voor en `"d"` komt slechts één keer voor. Het woord `"leraar"` is *niet cool* want zowel `"r"` als `"a"` komen evenveel keer voor.

Om te itereren over een alle letters van een woord kan je een `for` lus gebruiken, net zoals bij een lijst:

```python
woord = "leraar"
for letter in woord:
    print(letter)    # print achtereenvolgend l, e, r, a, a, r
```

of via:
```python
woord = "leraar"
for i in range(len(woord))
    print(woord[i])  # print achtereenvolgend l, e, r, a, a, r
```

## Gevraagd
Schrijf een functie `cool(woord)` dat gegeven een woord nagaat of dit al dan niet cool is. Bestudeer grondig onderstaande voorbeelden.


#### Voorbeelden

```python
>>> cool("ada")
True
```

```python
>>> cool("leraar")
False
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *Cool Word*, Universiteit van Valladolid (UVa). 
