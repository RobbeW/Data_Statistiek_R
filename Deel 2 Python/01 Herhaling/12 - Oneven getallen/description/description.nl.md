## Opgave

Schrijf een programma dat een **ondergrens** en **bovengrens** aan de gebruiker vraagt en vervolgens alle oneven getallen **ertussen** op het scherm weergeeft. Het programma geeft uiteindelijk ook het **aantal oneven** getallen op het scherm weer.

![Oneven getallen](media/julia-taubitz.jpg "Foto door Julia Taubitz op Unsplash"){:data-caption="Oneven getallen." width="450px"}

#### Voorbeelden
Bij ondergrens `0` en bovengrens `10` verschijnt er:
```
1
3
5
7
9
Tussen 0 en 10 zijn er 5 oneven getallen.
```

Bij ondergrens `11` en bovengrens `17` verschijnt er:
```
13
15
Tussen 11 en 17 zijn er 5 oneven getallen.
```

{: .callout.callout-info}
>#### Tip
> Gebruik de modulo operator `%`. `7` is niet deelbaar door `2`, oftewel `7 % 2 != 0`.