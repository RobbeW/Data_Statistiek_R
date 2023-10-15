Het was het wiskundige genie <a href="https://en.wikipedia.org/wiki/Leonhard_Euler" target="_blank">Leonard Euler</a> die in 1734 het beroemde Bazel-probleem oplostte.

Dit probleem behandelde de oneindige som van inverse kwadraten, namelijk:

$$
 \sum_{n=1}^\infty \dfrac{1}{n^2} = \dfrac{1}{1^2} + \dfrac{1}{2^2} + \dfrac{1}{3^2} + \dfrac{1}{4^2} + \ldots = ?
$$

Men wist reeds dat dit convergeerde, maar het was Euler die bewees dat dit enigszins verassend convergeert naar $$\dfrac{\pi^2}{6}$$!

![Leonard Euler, je nieuwe held!](media/Leonhard_Euler.jpg "Leonard Euler, schilderij door Jakob Handmann."){:data-caption="Leonard Euler, je nieuwe held!" width="35%"}

## Gevraagd

Maak een functie `bazel(aantal)` waarbij `aantal` het aantal termen in de som voorstelt. Zo geldt dat `bazel(10)` overeenkomt met $$\displaystyle \sum_{n=1}^{10} \dfrac{1}{n^2}$$.

- Laat R het resultaat van de som afronden op **6 cijfers na de komma**.

- Je kan **controleren** of het resultaat inderdaad Eulers vondst benadert. Probeer bijvoorbeeld `bazel(10000)` uit te rekenen en controleer of dit `pi^2 / 6` benadert.

 
{: .callout.callout-info}
>#### Tips
>
> - Een vector met de natuurlijke getallen van `1` tot `aantal` kan je gemakkelijk aanmaken via `1:aantal`.
> - Dit is geen oefening op het rekenkundig gemiddelde, maar je maakt **natuurlijk** wel gebruik van de `sum()` functie.