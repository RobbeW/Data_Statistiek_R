De <a href="https://nl.wikipedia.org/wiki/Harmonische_rij" target="_blank">harmonische rij</a> is een zeer bekende rij:

$$
    \mathsf{1,\qquad \dfrac{1}{2},\qquad \dfrac{1}{3},\qquad \dfrac{1}{4},\qquad \dfrac{1}{5},\qquad \dfrac{1}{6},\ldots}
$$

De bijbehorende **reeks** noemt men logischerwijs de harmonische **reeks**. Het valt eenvoudig te bewijzen dat deze reeks **divergent** is.

$$
    \mathsf{\sum_{n=1}^{+\inty} \dfrac{1}{n}}
$$

## Opgave

Schrijf een programma vraagt naar een **aantal termen** van deze harmonische reeks, en vervolgens de **partieelsom** uitrekent. Rond hierbij af op 4 cijfers na de komma.

#### Voorbeelden

Indien de gebruiker `3` ingeeft, dan berekent je programma:

$$
    \mathsf{\sum_{n=1}^{3} \dfrac{1}{n} = \dfrac{1}{1} + \dfrac{1}{2} + \dfrac{1}{3} = 1,833\ldots} 
$$

Er verschijnt vervolgens:
```
De partieelsom van de eerste 3 termen is: 1.8333
```

Bij invoer `20` ingeeft verschijnt er:
```
De partieelsom van de eerste 20 termen is: 3.5977
```

