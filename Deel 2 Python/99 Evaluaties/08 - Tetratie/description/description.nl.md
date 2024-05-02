In de lessen wiskunde werd de exponentiële functie reeds behandeld. Denk maar aan een functie waarbij de waarden steeds verdubbelen: 1, 2, 4, 8, 16, ... Dit stijgt zeer snel, vandaar ook de uitdrukking *exponentiële stijging*. 

Er is echter een andere wiskundige bewerking, genaamd **tetratie**, die nog sneller stijgt. Dit wordt als volgt gedefinieerd:

{: .callout.callout-danger}
> #### Definitie
> Voor twee natuurlijke getallen $$\mathsf{a}$$ en $$\mathsf{n}$$ geldt er dat de tetratie van $$\mathsf{a}$$ en $$\mathsf{n}$$, genoteerd als $$\mathsf{{^{n}a}}$$, gedefinieerd wordt als:
>
> $$\mathsf{{^{n}a} = {a^{a^{\cdot^{\cdot^{a}}}}}}$$
> 
> met $$\mathsf{n-1}$$ machtsverheffingen. Dit wordt soms ook genoteerd als $$\mathsf{a \uparrow \uparrow n}$$

Er geldt bijvoorbeeld $$\mathsf{{^{4}2} =2\uparrow\uparrow 4= {2^{2^{2^{2}}}} = 2^{2^{4}} = 2^{16} = 65536 }$$.

Een ander voorbeeld $$\mathsf{{^{3}3} =3\uparrow\uparrow 3= {3^{3^{3}}} = 3^{27} = 7625597484987}$$.

## Opgave
Schrijf een programma dat **in volgorde** de getallen `a` en `n` vraagt en vervolgens de tetratie $$\mathsf{{^{n}a}}$$ uitrekent.

#### Voorbeelden
Bij invoer `2` en `4` verschijnt er:
```
2 ￪￪ 4 is gelijk aan 65536
```

Bij invoer `3` en `3` verschijnt er:
```
3 ￪￪ 3 is gelijk aan 7625597484987
```

{: .callout.callout-info}
> #### Tips
> - Hoe pak je het aan indien je $$\mathsf{{^{3}2}}$$ wil uit rekenen? Probeer dit eens op papier.
> - Kopieer dit symbool voor je uitvoer: ￪ 