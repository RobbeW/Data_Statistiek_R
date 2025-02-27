DNA (<a href="https://nl.wikipedia.org/wiki/DNA_(biologie)" target="_blank">Desoxyribonucleïnezuur</a>) is een molecule die genetische informatie bevat. Het bestaat uit vier verschillende nucleotiden, namelijk adenine, thymine, guanine of cytosine.

![Afbeelding door digitale.de op Unsplash.](media/digitale-de.jpg "Afbeelding door digitale.de op Unsplash."){:data-caption=Afbeelding door digitale.de op Unsplash." width="35%"}

Als we elke nucleotide voorstellen met behulp van de eerste letter A, T, G en C, dan kan men een gen voorstellen als een lange opeenvolging van deze vier letters.

De biologe mevr. Naessens vond dat een bepaald gen in verschillende dieren teruggevonden kan worden. Ze kon bovendien vaststellen dat de opeenvolging van de nucleotiden, de DNA streng, zeer gelijkaardig was bij deze dieren. 

| Dier  | DNA streng        |
|------:|-------------------|
| Kat   | <span style="font-family=monospace;">GCATATGGCTGTGCA</span>   |
| Hond  | <span style="font-family=monospace;">GCAAATGGCTGTGCA</span>   |
| Paard | <span style="font-family=monospace;">GCTAATGGGTGTCCA</span>   |
| Koe   | <span style="font-family=monospace;">GCAAATGGCTGTGCA</span>   |
| Aap   | <span style="font-family=monospace;">GCAAATCGGTGAGCA</span>   |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}


Collega Naessens denkt dat mensen dit gen ook hebben en wil dit gaan zoeken in het menselijk genoom. Maar voor het zoeken naar een *gelijkaardige* DNA streng, moet ze definieren wat *gelijkaardig* betekent. Ze besluit de **Hamming afstand** te gebruiken. De Hamming afstand wordt gedefinieerd als het aantal posities met een verschillende letter bij twee strings van dezelfde lengte.

Zo is de Hamming afstand van <span style="font-family=monospace;"><span style="color:#FF8E27">A</span>G<span style="color:#A9D19B">C</span>AT</span> en <span style="font-family=monospace;"><span style="color:#FF8E27">G</span>G<span style="color:#A9D19B">A</span>AT</span> gelijk aan 2. Op twee plaatsen verschillen deze strengs van letter. 

Op deze manier kan je een **consensus** DNA streng maken. Je bepaalt de DNA streng die op het minst aantal plaatsen verschilt van de gegeven strengs.  Beschouw bijvoorbeeld de strengs <span style="font-family=monospace;">AGCAT</span>, <span style="font-family=monospace;">AGACT</span> en <span style="font-family=monospace;">GGAAT</span> dan is de consensus DNA streng <span style="font-family=monospace;">AGAAT</span>. Want de som van de Hamming afstanden van deze consensus DNA streng tot de andere drie strengs is minimaal.

Voor bovenstaande tabel zou <span style="font-family=Courier, monospace">GCAAATGGCTGTGCA</span> de consensus DNA streng zijn.

## Gevraagd

Schrijf een functie `consensus(rooster)` die gegeven een rooster met DNA strengs (reeds opgesplitst per karakter) een consensus DNA streng maakt. Je mag ervan uitgaan dat de oplossingen telkens uniek zijn. (In werkelijkheid is dit niet het geval)

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> consensus([["A", "G", "C", "A", "T"],
               ["A", "G", "A", "C", "T"],
               ["G", "G", "A", "A", "T"]])
["A", "G", "A", "A", "T"]
```

```python
>>> consensus([["G", "C", "A", "T", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
               ["G", "C", "A", "A", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
               ["G", "C", "T", "A", "A", "T", "G", "G", "G", "T", "G", "T", "C", "C", "A"],
               ["G", "C", "A", "A", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"],
               ["G", "C", "A", "A", "A", "T", "C", "G", "G", "T", "G", "A", "G", "C", "A"]])
["G", "C", "A", "A", "A", "T", "G", "G", "C", "T", "G", "T", "G", "C", "A"]
```

{: .callout.callout-secondary}
>#### Bron
> Gebaseerd op probleem *DNA Consensus String*, Universiteit van Valladolid (UVa). 
