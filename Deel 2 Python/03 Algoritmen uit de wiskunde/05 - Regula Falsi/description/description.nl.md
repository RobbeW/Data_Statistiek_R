De methode van regula falsi is een iteratieve methode voor het bepalen van nulpunten van continue functies op een interval waarbij de functiewaarden op de grenzen van dit interval een verschillend teken hebben.

Om bijvoorbeeld een nulwaarde van de functie $$\mathsf{f(x)}$$ te bepalen op het interval $$\mathsf{[a,b]}$$ gaat men als volgt te werk. In dit voorbeeld geldt $$\mathsf{f(a) < 0}$$ en $$\mathsf{f(b) >0}$$.

- Men zoekt de x-coördinaat c van het snijpunt met de x-as van de rechte door de punten $$\mathsf{(a,f(a) )}$$ en $$\mathsf{(b, f(b))}$$. 
- Bereken nadien $$\mathsf{f(c)}$$. Is $$\mathsf{f(c)}$$ strikt positief dan zoekt men verder op het interval $$\mathsf{[a,c]}$$, indien $$\mathsf{f(c)}$$ echter strikt negatief dan zoekt men verder op het interval $$\mathsf{[c,b]}$$.
- Herhaal deze methode op het interval $$\mathsf{[a,c]}$$ of $$\mathsf{[c,b]}$$ afhankelijk van bovenstaande berekening.

Vaak zal de methode niet exact eindigen, maar is men tevreden indien voor een potentiële nulpunt c geldt dat $$\mathsf{f(c)}$$ voldoende dicht van nul ligt. Gebruik hiervoor de absolute waarde van $$\mathsf{f(c)}$$. Het programma eindigt dus indien $$\mathsf{\lvert f(c)\rvert \leqslant \delta}$$ met $$\mathsf{\delta}$$ een bepaalde toleratie.

![De methode van regula falsi](media/image.png "De methode van regula falsi"){:data-caption="Animatie door D. Vanderfaeillie." .light-only width="60%"}

![De methode van regula falsi](media/image_dark.png "De methode van regula falsi"){:data-caption="Animatie door D. Vanderfaeillie." .dark-only width="60%"}

## Opgave

Schrijf een functie `regula_falsi( a, b, f, toleratie)` waarbij `f` een continue functie voorstelt met een nulwaarde van oneven orde, `a` en `b` respectievelijk de linker- en rechtergrenzen en `toleratie` de breedte van het interval waarop men zoekt. Hoe kleiner de toleratie, hoe nauwkeurig de methode.

De functie retourneert de nulwaarde tot op 15 cijfers na de komma nauwkeurig.

#### Voorbeeld 1

```python
def f( x ):
    return 1/20 * (x**5 + 3*x**4 - 11*x**3 - 27*x**2 + 10*x + 70)
```

Het uitvoeren van `regula_falsi( 1, 2, f, 0.0001 )` leidt tot:
```
In iteratie 1 is de benadering: 1.638888888888889
In iteratie 2 is de benadering: 1.624138274356702
In iteratie 3 is de benadering: 1.625022198877722
```

De uiteindelijke `return` waarde bedraagt:
```
>>> bisectiemethode( 1, 2, f, 0.0001 )
1.625022198877722
```
