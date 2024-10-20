De <a href="https://nl.wikipedia.org/wiki/Romeinse_cijfers" target="_blank">Romeinse cijfers</a> vormen een talstelsel voor het weergeven van natuurlijke getallen. Tegenwoordig gebruiken we meestal Arabisch-Indische cijfers om natuurlijke getallen voor te stellen.

De volgende symbolen worden gebruikt:

| symbool   | waarde    | 
|:---------:|:---------:|
| I         | 1         |
| V         | 5         |
| X         | 10        |
| L         | 50        |
| C         | 100       |
| D         | 500       |
| M         | 1 000      |
{:class="table table-striped table-condensed" style="width:auto;margin-left:auto;margin-right:auto;"}

In de oudheid lijken de regels met betrekking tot het noteren van getallen zeer los te zijn geweest. Tegenwoordig gebruikt men echter de volgende regels:

- Staat er links van een symbool een symbool met een kleinere waarden, dan wordt deze van het symbool afgetrokken;
- Er worden hoogstens drie dezelfde symbolen na elkaar genoteerd. Men noteert dus IV in plaats van IIII;
- Behalve de 'aftrekkingsregel' worden de symbolen gerangschikt van groot naar klein. Men noteert dus XIII in plaats van IIIX.

## Gevraagd
Schrijf een functie `romeins_naar_arabisch(tekst)` dat gegeven een natuurlijk getal uitgedrukt als een stuk tekst met Romeinse cijfers de waarde berekent.

Bestudeer grondig onderstaande voorbeelden.

#### Voorbeelden

```python
>>> romeins_naar_arabisch("XIII")
13
```

```python
>>> romeins_naar_arabisch("IX")
9
```

```python
>>> romeins_naar_arabisch("CXXIV")
124
```

{: .callout.callout-info}
>#### Tip
> Voor de tabel met waarden om naar een dictionary.
> ```python
romeins = {"I": 1, "V": 5, "X": 10, ...}
```
