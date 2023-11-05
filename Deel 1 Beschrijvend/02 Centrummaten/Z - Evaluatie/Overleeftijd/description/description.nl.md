<div class="text-end">
    <a class="btn btn-filled with-icon" href="https://dodona.be/nl/courses/2690" target="_blank"><i class="mdi mdi-backburger mdi-24" title="link"></i>Link naar de vorige oefeningen</a>
</div>

<div class="text-end" style="margin-top:15px">
    <a class="btn btn-filled with-icon" href="https://webr.r-wasm.org/latest/" target="_blank"><i class="mdi mdi-cloud-tags mdi-24" title="link"></i>Link naar WebR</a>
</div>

Dierenproeven worden vaak gebruikt om de veiligheid en werkzaamheid van medicijnen of andere producten te testen, soms voor fundamenteel wetenschappelijk onderzoek. Muizen, ratten en konijnen vormen de hoofdmoot van de proefdieren: ze zijn goedkoop in aanschaf, nemen weinig plaats in en planten zich snel voort.

Stel dat men een experiment uitvoert waarbij een muis blootgesteld wordt aan een dosis radioactieve straling en men vervolgens de tijd dat het dier overleeft (in weken) gaat meten. Indien men een uitspraak wil doen over de levensverwachting van zo'n muis zal men gebruik maken van de schatters $$\hat \alpha$$ en $$\hat \beta$$.

$$
\hat \alpha = \dfrac{(\overline x)^2}{\frac{1}{n}\sum_{i=1}^n x_i^2 - (\overline x)^2} \qquad \text{\sffamily en} \qquad \hat \beta = \dfrac{\frac{1}{n} \sum_{i=1}^n x_i^2 - (\overline)^2}{\overline x}
$$

hierbij stelt $$\overline x$$ natuurlijk het gewone rekenkundige gemiddelde voor.

## Gevraagd

Zet bovenstaande formules om in de functies `alpha(vector)` en `beta(vector)` waarbij `vector` een vector met overlevingstijden voorstelt.
Laat R het resultaat van het product afronden op **2 cijfers na de komma**.