De rij van Sylvester is gedefinieerd als het **product van alle vorige elementen** uit de rij, **plus 1**.

Er geldt dus voor het n<sup>de</sup> element $$s_n$$ uit de rij:

$$
  s_n = 1+ \prod_{i=1}^{n-1} s_i
$$

De rij begint met de getallen 2, 3, 7, 43, 1 807, 3 263 443, ...

## Gevraagd

Maak een functie `sylvester(n)` waarbij `n` het rangnummer voorstelt. Zo geldt er dat `sylvester(3)` overeenkomt met het getal 7.
 
{: .callout.callout-info}
>#### Tips
>
> - Gebruik een `for` lus. 
> - Bepaal voor elke waarde van `n` (met $$n \geqslant 1$$) steeds de volledige sylvesterrij en `return` op het einde het laatste element.
> - Gebruik `c(rij, resultaat)` om de rij stapsgewijs op te bouwen.