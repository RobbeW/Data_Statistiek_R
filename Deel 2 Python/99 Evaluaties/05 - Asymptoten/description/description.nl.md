Een rationale functie wordt als volgt gedefinieerd:

{: .callout.callout-danger}
> #### Rationale functie
> Een rationale functie $$\mathsf{f(x)}$$ is een reële functie die geschreven kan worden als:
>
> $$\mathsf{f(x) = \dfrac{g(x)}{h(x)} = \dfrac{a_{n}x^{n} + a_{n-1}x^{n-1} + \ldots + a_{2}x^{2} + a_{1}x + a_{0}}{b_{m}x^{m} + b_{m-1}x^{m-1} + \ldots + b_{2}x^{2} + b_{1}x + b_{0}}}$$
>
> waarbij $$\mathsf{g(x)}$$ en $$\mathsf{h(x)}$$ veeltermfuncties zijn en $$\mathsf{h(x)}$$ verschillend van de nulfunctie.


Een rationale functie kan, zoals wel weten, **asymptoten** hebben. De graad van de veeltermen in teller en noemer zijn hiervoor bepalend. Is de graad van de veelterm in de noemer groter dan deze in de teller dan geldt:

$$\mathsf{\lim_{x\to\pm \infty}f(x) = 0}$$

bijgevolg heeft de functie de $$\mathsf{x}$$-as als horizontale asymptoot.

Is de graad van de veeltermen in teller en noemer aan elkaar gelijk, dan is er nog steeds een horizontale asymptoot maar wordt deze bepaald door de hoogstegraadscoëfficienten in teller en noemer. Er geldt bijvoorbeeld voor $$\mathsf{f(x) = \dfrac{2x^2+1}{3x^2}}$$ 

$$
\mathsf{\lim_{x\to\pm \infty}f(x) = \dfrac{2}{3}}
$$

Is de graad van de teller één hoger dan de graad van de noemer, dan bepaalt men met de formules van <a href="https://nl.wikipedia.org/wiki/Augustin_Louis_Cauchy" target="_blank">Cauchy</a> de rico $$\mathsf{a}$$ en constante $$\mathsf{b}$$ van de bijbehorende schuine asymptoot.

$$
\mathsf{\lim_{x\to\pm \infty}\dfrac{f(x)}{x} = a, \qquad \qquad \lim_{x\to\pm \infty}f(x) - ax = b}
$$

![De richtingscoëfficient bepalen.](media/image.png "De richtingscoëfficient bepalen."){:data-caption="De richtingscoëfficient bepalen." .light-only width="55%"}

![De richtingscoëfficient bepalen.](media/image_dark.png "EDe richtingscoëfficient bepalen."){:data-caption="De richtingscoëfficient bepalen." .dark-only width="55%"}

## Opgave
Schrijf een programma dat achtereenvolgens de **graad** van teller en noemer bevraagt, **daarna** worden de **hoogstegraadscoëfficienten** uit teller en noemer gevraagd.

Geef vervolgens weer of er een horizontale dan wel een schuine asymptoot aanwezig is. Geef ook meer details over deze asymptoot.

#### Voorbeelden
Indien het eerste punt als coördinaat (`1`, `3`) en het tweede punt als coördinaat (`5`, `1`) heeft, dan verschijnt er:
```
De rico van de rechte door deze punten is -0.5
Deze rechte is dalend.
```